(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
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
    (lambda _%$args40408%_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setq-macro::t|
             _%$args40408%_)))
  (define |gerbil/core/more-sugar[1]#setq-macro-macro|
    (make-class-slot-accessor
     |gerbil/core/more-sugar[1]#setq-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#setq-macro-macro-set!|
    (make-class-slot-mutator |gerbil/core/more-sugar[1]#setq-macro::t| 'macro))
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
    (lambda _%$args40404%_
      (apply make-instance
             |gerbil/core/more-sugar[1]#setf-macro::t|
             _%$args40404%_)))
  (define |gerbil/core/more-sugar[1]#setf-macro-macro|
    (make-class-slot-accessor
     |gerbil/core/more-sugar[1]#setf-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#setf-macro-macro-set!|
    (make-class-slot-mutator |gerbil/core/more-sugar[1]#setf-macro::t| 'macro))
  (define |gerbil/core/more-sugar[1]#&setf-macro-macro|
    (make-class-slot-unchecked-accessor
     |gerbil/core/more-sugar[1]#setf-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#&setf-macro-macro-set!|
    (make-class-slot-unchecked-mutator
     |gerbil/core/more-sugar[1]#setf-macro::t|
     'macro))
  (define |gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
    (lambda (_%stx40401%_)
      (if (gx#identifier? _%stx40401%_)
          (let ((__tmp41626 (gx#syntax-local-value _%stx40401%_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setf-macro::t|
             __tmp41626))
          '#f)))
  (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
    (lambda (_%stx40398%_)
      (if (gx#identifier? _%stx40398%_)
          (let ((__tmp41627 (gx#syntax-local-value _%stx40398%_ false)))
            (declare (not safe))
            (class-instance?
             |gerbil/core/more-sugar[1]#setq-macro::t|
             __tmp41627))
          '#f)))
  (define |gerbil/core/more-sugar[1]#expand-set!|
    (lambda (_%stx40023%_)
      (let* ((_%__stx4146541466%_ _%stx40023%_)
             (_%g4002940092%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4146541466%_))))
        (let ((_%__kont4146841469%_
               (lambda (_%L40375%_ _%L40377%_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _%L40377%_)
                  _%stx40023%_)))
              (_%__kont4147041471%_
               (lambda (_%L40264%_ _%L40266%_ _%L40267%_)
                 (let* ((_%g4028940297%_
                         (lambda (_%g4029040293%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4029040293%_)))
                        (_%g4028840324%_
                         (lambda (_%g4029040301%_)
                           ((lambda (_%L40304%_)
                              (cons _%L40304%_
                                    (foldr (lambda (_%g4031540318%_
                                                    _%g4031640321%_)
                                             (cons _%g4031540318%_
                                                   _%g4031640321%_))
                                           (cons _%L40264%_ '())
                                           _%L40266%_)))
                            _%g4029040301%_))))
                   (_%g4028840324%_
                    (gx#stx-identifier _%L40267%_ _%L40267%_ '"-set!")))))
              (_%__kont4147441475%_
               (lambda (_%L40174%_)
                 (gx#core-apply-expander
                  (gx#syntax-local-e _%L40174%_)
                  _%stx40023%_)))
              (_%__kont4147641477%_
               (lambda (_%L40129%_ _%L40131%_)
                 (cons (gx#datum->syntax '#f '%#set!)
                       (cons _%L40131%_ (cons _%L40129%_ '()))))))
          (let* ((_%__match4156441565%_
                  (lambda (_%e4007840099%_
                           _%hd4007940103%_
                           _%tl4008040106%_
                           _%e4008140109%_
                           _%hd4008240113%_
                           _%tl4008340116%_
                           _%e4008440119%_
                           _%hd4008540123%_
                           _%tl4008640126%_)
                    (let ((_%L40129%_ _%hd4008540123%_)
                          (_%L40131%_ _%hd4008240113%_))
                      (if (gx#identifier? _%L40131%_)
                          (_%__kont4147641477%_ _%L40129%_ _%L40131%_)
                          (let () (declare (not safe)) (_%g4002940092%_))))))
                 (_%__match4154441545%_
                  (lambda (_%e4007040154%_
                           _%hd4007140158%_
                           _%tl4007240161%_
                           _%e4007340164%_
                           _%hd4007440168%_
                           _%tl4007540171%_)
                    (let ((_%L40174%_ _%hd4007440168%_))
                      (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                           _%L40174%_)
                          (_%__kont4147441475%_ _%L40174%_)
                          (if (gx#stx-pair? _%tl4007540171%_)
                              (let ((_%e4008440119%_
                                     (gx#syntax-e _%tl4007540171%_)))
                                (let ((_%tl4008640126%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4008440119%_)))
                                      (_%hd4008540123%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4008440119%_))))
                                  (if (gx#stx-null? _%tl4008640126%_)
                                      (_%__match4156441565%_
                                       _%e4007040154%_
                                       _%hd4007140158%_
                                       _%tl4007240161%_
                                       _%e4007340164%_
                                       _%hd4007440168%_
                                       _%tl4007540171%_
                                       _%e4008440119%_
                                       _%hd4008540123%_
                                       _%tl4008640126%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g4002940092%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g4002940092%_)))))))
                 (_%__match4153241533%_
                  (lambda (_%e4004840194%_
                           _%hd4004940198%_
                           _%tl4005040201%_
                           _%e4005140204%_
                           _%hd4005240208%_
                           _%tl4005340211%_
                           _%e4005440214%_
                           _%hd4005540218%_
                           _%tl4005640221%_
                           _%__splice4147241473%_
                           _%target4005740224%_
                           _%tl4005940227%_)
                    (letrec ((_%loop4006040230%_
                              (lambda (_%hd4005840234%_ _%arg4006440237%_)
                                (if (gx#stx-pair? _%hd4005840234%_)
                                    (let ((_%e4006140240%_
                                           (gx#syntax-e _%hd4005840234%_)))
                                      (let ((_%lp-tl4006340247%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4006140240%_)))
                                            (_%lp-hd4006240244%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4006140240%_))))
                                        (_%loop4006040230%_
                                         _%lp-tl4006340247%_
                                         (cons _%lp-hd4006240244%_
                                               _%arg4006440237%_))))
                                    (let ((_%arg4006540250%_
                                           (reverse _%arg4006440237%_)))
                                      (if (gx#stx-pair? _%tl4005340211%_)
                                          (let ((_%e4006640254%_
                                                 (gx#syntax-e
                                                  _%tl4005340211%_)))
                                            (let ((_%tl4006840261%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4006640254%_)))
                                                  (_%hd4006740258%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4006640254%_))))
                                              (if (gx#stx-null?
                                                   _%tl4006840261%_)
                                                  (let ((_%L40264%_
                                                         _%hd4006740258%_)
                                                        (_%L40266%_
                                                         _%arg4006540250%_)
                                                        (_%L40267%_
                                                         _%hd4005540218%_))
                                                    (if (gx#identifier?
                                                         _%L40267%_)
                                                        (_%__kont4147041471%_
                                                         _%L40264%_
                                                         _%L40266%_
                                                         _%L40267%_)
                                                        (_%__match4154441545%_
                                                         _%e4004840194%_
                                                         _%hd4004940198%_
                                                         _%tl4005040201%_
                                                         _%e4005140204%_
                                                         _%hd4005240208%_
                                                         _%tl4005340211%_)))
                                                  (_%__match4154441545%_
                                                   _%e4004840194%_
                                                   _%hd4004940198%_
                                                   _%tl4005040201%_
                                                   _%e4005140204%_
                                                   _%hd4005240208%_
                                                   _%tl4005340211%_))))
                                          (_%__match4154441545%_
                                           _%e4004840194%_
                                           _%hd4004940198%_
                                           _%tl4005040201%_
                                           _%e4005140204%_
                                           _%hd4005240208%_
                                           _%tl4005340211%_)))))))
                      (_%loop4006040230%_ _%target4005740224%_ '())))))
            (if (gx#stx-pair? _%__stx4146541466%_)
                (let ((_%e4003340335%_ (gx#syntax-e _%__stx4146541466%_)))
                  (let ((_%tl4003540342%_
                         (let () (declare (not safe)) (##cdr _%e4003340335%_)))
                        (_%hd4003440339%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4003340335%_))))
                    (if (gx#stx-pair? _%tl4003540342%_)
                        (let ((_%e4003640345%_ (gx#syntax-e _%tl4003540342%_)))
                          (let ((_%tl4003840352%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4003640345%_)))
                                (_%hd4003740349%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4003640345%_))))
                            (if (gx#stx-pair? _%hd4003740349%_)
                                (let ((_%e4003940355%_
                                       (gx#syntax-e _%hd4003740349%_)))
                                  (let ((_%tl4004140362%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4003940355%_)))
                                        (_%hd4004040359%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4003940355%_))))
                                    (if (gx#stx-pair? _%tl4003840352%_)
                                        (let ((_%e4004240365%_
                                               (gx#syntax-e _%tl4003840352%_)))
                                          (let ((_%tl4004440372%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e4004240365%_)))
                                                (_%hd4004340369%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e4004240365%_))))
                                            (if (gx#stx-null? _%tl4004440372%_)
                                                (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                     (gx#datum->syntax
                                                      '#f
                                                      'setfid))
                                                    (let ((_%L40375%_
                                                           _%hd4004340369%_)
                                                          (_%L40377%_
                                                           _%hd4004040359%_))
                                                      (_%__kont4146841469%_
                                                       _%L40375%_
                                                       _%L40377%_))
                                                    (if (gx#stx-pair/null?
                                                         _%tl4004140362%_)
                                                        (let ((_%__splice4147241473%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl4004140362%_
                                                                '0)))
                                                          (let ((_%tl4005940227%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4147241473%_ '1)))
                        (_%target4005740224%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4147241473%_ '0))))
                    (if (gx#stx-null? _%tl4005940227%_)
                        (_%__match4153241533%_
                         _%e4003340335%_
                         _%hd4003440339%_
                         _%tl4003540342%_
                         _%e4003640345%_
                         _%hd4003740349%_
                         _%tl4003840352%_
                         _%e4003940355%_
                         _%hd4004040359%_
                         _%tl4004140362%_
                         _%__splice4147241473%_
                         _%target4005740224%_
                         _%tl4005940227%_)
                        (_%__match4154441545%_
                         _%e4003340335%_
                         _%hd4003440339%_
                         _%tl4003540342%_
                         _%e4003640345%_
                         _%hd4003740349%_
                         _%tl4003840352%_))))
                (_%__match4154441545%_
                 _%e4003340335%_
                 _%hd4003440339%_
                 _%tl4003540342%_
                 _%e4003640345%_
                 _%hd4003740349%_
                 _%tl4003840352%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%tl4004140362%_)
                                                    (let ((_%__splice4147241473%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl4004140362%_
                                                            '0)))
                                                      (let ((_%tl4005940227%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4147241473%_ '1)))
                    (_%target4005740224%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4147241473%_ '0))))
                (if (gx#stx-null? _%tl4005940227%_)
                    (_%__match4153241533%_
                     _%e4003340335%_
                     _%hd4003440339%_
                     _%tl4003540342%_
                     _%e4003640345%_
                     _%hd4003740349%_
                     _%tl4003840352%_
                     _%e4003940355%_
                     _%hd4004040359%_
                     _%tl4004140362%_
                     _%__splice4147241473%_
                     _%target4005740224%_
                     _%tl4005940227%_)
                    (_%__match4154441545%_
                     _%e4003340335%_
                     _%hd4003440339%_
                     _%tl4003540342%_
                     _%e4003640345%_
                     _%hd4003740349%_
                     _%tl4003840352%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match4154441545%_
                                                     _%e4003340335%_
                                                     _%hd4003440339%_
                                                     _%tl4003540342%_
                                                     _%e4003640345%_
                                                     _%hd4003740349%_
                                                     _%tl4003840352%_)))))
                                        (if (gx#stx-pair/null?
                                             _%tl4004140362%_)
                                            (let ((_%__splice4147241473%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl4004140362%_
                                                    '0)))
                                              (let ((_%tl4005940227%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4147241473%_
                                                        '1)))
                                                    (_%target4005740224%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4147241473%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl4005940227%_)
                                                    (_%__match4153241533%_
                                                     _%e4003340335%_
                                                     _%hd4003440339%_
                                                     _%tl4003540342%_
                                                     _%e4003640345%_
                                                     _%hd4003740349%_
                                                     _%tl4003840352%_
                                                     _%e4003940355%_
                                                     _%hd4004040359%_
                                                     _%tl4004140362%_
                                                     _%__splice4147241473%_
                                                     _%target4005740224%_
                                                     _%tl4005940227%_)
                                                    (_%__match4154441545%_
                                                     _%e4003340335%_
                                                     _%hd4003440339%_
                                                     _%tl4003540342%_
                                                     _%e4003640345%_
                                                     _%hd4003740349%_
                                                     _%tl4003840352%_))))
                                            (_%__match4154441545%_
                                             _%e4003340335%_
                                             _%hd4003440339%_
                                             _%tl4003540342%_
                                             _%e4003640345%_
                                             _%hd4003740349%_
                                             _%tl4003840352%_)))))
                                (_%__match4154441545%_
                                 _%e4003340335%_
                                 _%hd4003440339%_
                                 _%tl4003540342%_
                                 _%e4003640345%_
                                 _%hd4003740349%_
                                 _%tl4003840352%_))))
                        (let () (declare (not safe)) (_%g4002940092%_)))))
                (let () (declare (not safe)) (_%g4002940092%_))))))))
  (define |gerbil/core/more-sugar[:0:]#set!|
    (lambda (_%stx40413%_)
      (|gerbil/core/more-sugar[1]#expand-set!| _%stx40413%_)))
  (define |gerbil/core/more-sugar[:0:]#values-set!|
    (lambda (_%stx40416%_)
      (let* ((_%g4041940443%_
              (lambda (_%g4042040439%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4042040439%_)))
             (_%g4041840621%_
              (lambda (_%g4042040447%_)
                (if (gx#stx-pair? _%g4042040447%_)
                    (let ((_%e4042340450%_ (gx#syntax-e _%g4042040447%_)))
                      (let ((_%hd4042440454%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4042340450%_)))
                            (_%tl4042540457%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4042340450%_))))
                        (if (gx#stx-pair/null? _%tl4042540457%_)
                            (if (let ((__tmp41628
                                       (gx#stx-length _%tl4042540457%_)))
                                  (declare (not safe))
                                  (##fx>= __tmp41628 '1))
                                (let ((_g41629_
                                       (gx#syntax-split-splice
                                        _%tl4042540457%_
                                        '1)))
                                  (begin
                                    (let ((_g41630_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g41629_)
                                                 (##values-length _g41629_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g41630_ 2)))
                                          (error "Context expects 2 values"
                                                 _g41630_)))
                                    (let ((_%target4042640460%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g41629_ 0)))
                                          (_%tl4042840463%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g41629_ 1))))
                                      (if (gx#stx-pair? _%tl4042840463%_)
                                          (let ((_%e4043540466%_
                                                 (gx#syntax-e
                                                  _%tl4042840463%_)))
                                            (let ((_%hd4043640470%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4043540466%_)))
                                                  (_%tl4043740473%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4043540466%_))))
                                              (if (gx#stx-null?
                                                   _%tl4043740473%_)
                                                  (letrec ((_%loop4042940476%_
                                                            (lambda (_%hd4042740480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%tgt4043340483%_)
                      (if (gx#stx-pair? _%hd4042740480%_)
                          (let ((_%e4043040486%_
                                 (gx#syntax-e _%hd4042740480%_)))
                            (let ((_%lp-hd4043140490%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4043040486%_)))
                                  (_%lp-tl4043240493%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4043040486%_))))
                              (_%loop4042940476%_
                               _%lp-tl4043240493%_
                               (cons _%lp-hd4043140490%_ _%tgt4043340483%_))))
                          (let ((_%tgt4043440496%_
                                 (reverse _%tgt4043340483%_)))
                            ((lambda (_%L40500%_ _%L40502%_)
                               (let* ((_%g4052040537%_
                                       (lambda (_%g4052140533%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g4052140533%_)))
                                      (_%g4051940609%_
                                       (lambda (_%g4052140541%_)
                                         (if (gx#stx-pair/null?
                                              _%g4052140541%_)
                                             (let ((_g41631_
                                                    (gx#syntax-split-splice
                                                     _%g4052140541%_
                                                     '0)))
                                               (begin
                                                 (let ((_g41632_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g41631_)
                                                              (##values-length
                                                               _g41631_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g41632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g41632_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%target4052340544%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g41631_
                                                           0)))
                                                       (_%tl4052540547%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g41631_
                                                           1))))
                                                   (if (gx#stx-null?
                                                        _%tl4052540547%_)
                                                       (letrec ((_%loop4052640550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%hd4052440554%_ _%$e4053040557%_)
                           (if (gx#stx-pair? _%hd4052440554%_)
                               (let ((_%e4052740560%_
                                      (gx#syntax-e _%hd4052440554%_)))
                                 (let ((_%lp-hd4052840564%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e4052740560%_)))
                                       (_%lp-tl4052940567%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e4052740560%_))))
                                   (_%loop4052640550%_
                                    _%lp-tl4052940567%_
                                    (cons _%lp-hd4052840564%_
                                          _%$e4053040557%_))))
                               (let ((_%$e4053140570%_
                                      (reverse _%$e4053040557%_)))
                                 ((lambda (_%L40574%_)
                                    (cons (gx#datum->syntax '#f 'let-values)
                                          (cons (cons (cons (foldr (lambda (_%g4059240595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g4059340598%_)
                             (cons _%g4059240595%_ _%g4059340598%_))
                           '()
                           _%L40574%_)
                    (cons _%L40500%_ '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L40574%_
                                                   _%L40502%_)
                                                  (foldr (lambda (_%g4058940601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g4059040604%_
                          _%g4059140606%_)
                   (cons (cons (gx#datum->syntax '#f 'set!)
                               (cons _%g4059040604%_
                                     (cons _%g4058940601%_ '())))
                         _%g4059140606%_))
                 '()
                 _%L40574%_
                 _%L40502%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%$e4053140570%_))))))
                 (_%loop4052640550%_ _%target4052340544%_ '()))
               (_%g4052040537%_ _%g4052140541%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4052040537%_
                                              _%g4052140541%_)))))
                                 (_%g4051940609%_
                                  (gx#gentemps
                                   (foldr (lambda (_%g4061240615%_
                                                   _%g4061340618%_)
                                            (cons _%g4061240615%_
                                                  _%g4061340618%_))
                                          '()
                                          _%L40502%_)))))
                             _%hd4043640470%_
                             _%tgt4043440496%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4042940476%_
                                                     _%target4042640460%_
                                                     '()))
                                                  (_%g4041940443%_
                                                   _%g4042040447%_))))
                                          (_%g4041940443%_ _%g4042040447%_)))))
                                (_%g4041940443%_ _%g4042040447%_))
                            (_%g4041940443%_ _%g4042040447%_))))
                    (_%g4041940443%_ _%g4042040447%_)))))
        (_%g4041840621%_ _%stx40416%_))))
  (define |gerbil/core/more-sugar[:0:]#parameterize|
    (lambda (_%stx40627%_)
      (let* ((_%__stx4156741568%_ _%stx40627%_)
             (_%g4063140689%_
              (lambda ()
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%__stx4156741568%_))))
        (let ((_%__kont4157041571%_
               (lambda (_%L41023%_)
                 (cons (gx#datum->syntax '#f 'let)
                       (cons '()
                             (foldr (lambda (_%g4103941042%_ _%g4104041045%_)
                                      (cons _%g4103941042%_ _%g4104041045%_))
                                    '()
                                    _%L41023%_)))))
              (_%__kont4157441575%_
               (lambda (_%L40800%_ _%L40802%_ _%L40803%_)
                 (let* ((_%g4082640834%_
                         (lambda (_%g4082740830%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g4082740830%_)))
                        (_%g4082540954%_
                         (lambda (_%g4082740838%_)
                           ((lambda (_%L40841%_)
                              (let* ((_%g4085340870%_
                                      (lambda (_%g4085440866%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g4085440866%_)))
                                     (_%g4085240934%_
                                      (lambda (_%g4085440874%_)
                                        (if (gx#stx-pair/null? _%g4085440874%_)
                                            (let ((_g41633_
                                                   (gx#syntax-split-splice
                                                    _%g4085440874%_
                                                    '0)))
                                              (begin
                                                (let ((_g41634_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g41633_)
                                                             (##values-length
                                                              _g41633_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g41634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g41634_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target4085640877%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g41633_
                                                          0)))
                                                      (_%tl4085840880%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g41633_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl4085840880%_)
                                                      (letrec ((_%loop4085940883%_
                                                                (lambda (_%hd4085740887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%arg4086340890%_)
                          (if (gx#stx-pair? _%hd4085740887%_)
                              (let ((_%e4086040893%_
                                     (gx#syntax-e _%hd4085740887%_)))
                                (let ((_%lp-hd4086140897%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4086040893%_)))
                                      (_%lp-tl4086240900%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4086040893%_))))
                                  (_%loop4085940883%_
                                   _%lp-tl4086240900%_
                                   (cons _%lp-hd4086140897%_
                                         _%arg4086340890%_))))
                              (let ((_%arg4086440903%_
                                     (reverse _%arg4086340890%_)))
                                ((lambda (_%L40907%_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'call-with-parameters)
                                         (cons _%L40841%_
                                               (foldr (lambda (_%g4092540928%_
                                                               _%g4092640931%_)
                                                        (cons _%g4092540928%_
                                                              _%g4092640931%_))
                                                      '()
                                                      _%L40907%_))))
                                 _%arg4086440903%_))))))
                (_%loop4085940883%_ _%target4085640877%_ '()))
              (_%g4085340870%_ _%g4085440874%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4085340870%_
                                             _%g4085440874%_)))))
                                (_%g4085240934%_
                                 (foldr cons*
                                        '()
                                        (gx#syntax->list
                                         (foldr (lambda (_%g4093740940%_
                                                         _%g4093840943%_)
                                                  (cons _%g4093740940%_
                                                        _%g4093840943%_))
                                                '()
                                                _%L40803%_))
                                        (gx#syntax->list
                                         (foldr (lambda (_%g4094540948%_
                                                         _%g4094640951%_)
                                                  (cons _%g4094540948%_
                                                        _%g4094640951%_))
                                                '()
                                                _%L40802%_))))))
                            _%g4082740838%_))))
                   (_%g4082540954%_
                    (gx#stx-wrap-source
                     (cons (gx#datum->syntax '#f 'lambda)
                           (cons '()
                                 (foldr (lambda (_%g4095740960%_
                                                 _%g4095840963%_)
                                          (cons _%g4095740960%_
                                                _%g4095840963%_))
                                        '()
                                        _%L40800%_)))
                     (gx#stx-source _%stx40627%_)))))))
          (let* ((_%__match4162241623%_
                  (lambda (_%e4065240696%_
                           _%hd4065340700%_
                           _%tl4065440703%_
                           _%e4065540706%_
                           _%hd4065640710%_
                           _%tl4065740713%_
                           _%__splice4157641577%_
                           _%target4065840716%_
                           _%tl4066040719%_)
                    (letrec ((_%loop4066140722%_
                              (lambda (_%hd4065940726%_
                                       _%expr4066540729%_
                                       _%param4066640731%_)
                                (if (gx#stx-pair? _%hd4065940726%_)
                                    (let ((_%e4066240734%_
                                           (gx#syntax-e _%hd4065940726%_)))
                                      (let ((_%lp-tl4066440741%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4066240734%_)))
                                            (_%lp-hd4066340738%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4066240734%_))))
                                        (if (gx#stx-pair? _%lp-hd4066340738%_)
                                            (let ((_%e4067840744%_
                                                   (gx#syntax-e
                                                    _%lp-hd4066340738%_)))
                                              (let ((_%tl4068040751%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4067840744%_)))
                                                    (_%hd4067940748%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4067840744%_))))
                                                (if (gx#stx-pair?
                                                     _%tl4068040751%_)
                                                    (let ((_%e4068140754%_
                                                           (gx#syntax-e
                                                            _%tl4068040751%_)))
                                                      (let ((_%tl4068340761%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e4068140754%_)))
                    (_%hd4068240758%_
                     (let () (declare (not safe)) (##car _%e4068140754%_))))
                (if (gx#stx-null? _%tl4068340761%_)
                    (_%loop4066140722%_
                     _%lp-tl4066440741%_
                     (cons _%hd4068240758%_ _%expr4066540729%_)
                     (cons _%hd4067940748%_ _%param4066640731%_))
                    (let () (declare (not safe)) (_%g4063140689%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g4063140689%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g4063140689%_)))))
                                    (let ((_%param4066840767%_
                                           (reverse _%param4066640731%_))
                                          (_%expr4066740764%_
                                           (reverse _%expr4066540729%_)))
                                      (if (gx#stx-pair/null? _%tl4065740713%_)
                                          (let ((_%__splice4157841579%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl4065740713%_
                                                  '0)))
                                            (let ((_%tl4067140773%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4157841579%_
                                                      '1)))
                                                  (_%target4066940770%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4157841579%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl4067140773%_)
                                                  (letrec ((_%loop4067240776%_
                                                            (lambda (_%hd4067040780%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%body4067640783%_)
                      (if (gx#stx-pair? _%hd4067040780%_)
                          (let ((_%e4067340786%_
                                 (gx#syntax-e _%hd4067040780%_)))
                            (let ((_%lp-tl4067540793%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4067340786%_)))
                                  (_%lp-hd4067440790%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4067340786%_))))
                              (_%loop4067240776%_
                               _%lp-tl4067540793%_
                               (cons _%lp-hd4067440790%_ _%body4067640783%_))))
                          (let ((_%body4067740796%_
                                 (reverse _%body4067640783%_)))
                            (_%__kont4157441575%_
                             _%body4067740796%_
                             _%expr4066740764%_
                             _%param4066840767%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop4067240776%_
                                                     _%target4066940770%_
                                                     '()))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g4063140689%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g4063140689%_))))))))
                      (_%loop4066140722%_ _%target4065840716%_ '() '()))))
                 (_%__match4160241603%_
                  (lambda (_%e4063440973%_
                           _%hd4063540977%_
                           _%tl4063640980%_
                           _%e4063740983%_
                           _%hd4063840987%_
                           _%tl4063940990%_
                           _%__splice4157241573%_
                           _%target4064040993%_
                           _%tl4064240996%_)
                    (letrec ((_%loop4064340999%_
                              (lambda (_%hd4064141003%_ _%body4064741006%_)
                                (if (gx#stx-pair? _%hd4064141003%_)
                                    (let ((_%e4064441009%_
                                           (gx#syntax-e _%hd4064141003%_)))
                                      (let ((_%lp-tl4064641016%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4064441009%_)))
                                            (_%lp-hd4064541013%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4064441009%_))))
                                        (_%loop4064340999%_
                                         _%lp-tl4064641016%_
                                         (cons _%lp-hd4064541013%_
                                               _%body4064741006%_))))
                                    (let ((_%body4064841019%_
                                           (reverse _%body4064741006%_)))
                                      (_%__kont4157041571%_
                                       _%body4064841019%_))))))
                      (_%loop4064340999%_ _%target4064040993%_ '())))))
            (if (gx#stx-pair? _%__stx4156741568%_)
                (let ((_%e4063440973%_ (gx#syntax-e _%__stx4156741568%_)))
                  (let ((_%tl4063640980%_
                         (let () (declare (not safe)) (##cdr _%e4063440973%_)))
                        (_%hd4063540977%_
                         (let ()
                           (declare (not safe))
                           (##car _%e4063440973%_))))
                    (if (gx#stx-pair? _%tl4063640980%_)
                        (let ((_%e4063740983%_ (gx#syntax-e _%tl4063640980%_)))
                          (let ((_%tl4063940990%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e4063740983%_)))
                                (_%hd4063840987%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e4063740983%_))))
                            (if (gx#stx-null? _%hd4063840987%_)
                                (if (gx#stx-pair/null? _%tl4063940990%_)
                                    (let ((_%__splice4157241573%_
                                           (gx#syntax-split-splice->vector
                                            _%tl4063940990%_
                                            '0)))
                                      (let ((_%tl4064240996%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4157241573%_
                                                '1)))
                                            (_%target4064040993%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4157241573%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4064240996%_)
                                            (_%__match4160241603%_
                                             _%e4063440973%_
                                             _%hd4063540977%_
                                             _%tl4063640980%_
                                             _%e4063740983%_
                                             _%hd4063840987%_
                                             _%tl4063940990%_
                                             _%__splice4157241573%_
                                             _%target4064040993%_
                                             _%tl4064240996%_)
                                            (if (gx#stx-pair/null?
                                                 _%hd4063840987%_)
                                                (let ((_%__splice4157641577%_
                                                       (gx#syntax-split-splice->vector
                                                        _%hd4063840987%_
                                                        '0)))
                                                  (let ((_%tl4066040719%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4157641577%_
                                                            '1)))
                                                        (_%target4065840716%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4157641577%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl4066040719%_)
                                                        (_%__match4162241623%_
                                                         _%e4063440973%_
                                                         _%hd4063540977%_
                                                         _%tl4063640980%_
                                                         _%e4063740983%_
                                                         _%hd4063840987%_
                                                         _%tl4063940990%_
                                                         _%__splice4157641577%_
                                                         _%target4065840716%_
                                                         _%tl4066040719%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g4063140689%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4063140689%_))))))
                                    (if (gx#stx-pair/null? _%hd4063840987%_)
                                        (let ((_%__splice4157641577%_
                                               (gx#syntax-split-splice->vector
                                                _%hd4063840987%_
                                                '0)))
                                          (let ((_%tl4066040719%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4157641577%_
                                                    '1)))
                                                (_%target4065840716%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4157641577%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl4066040719%_)
                                                (_%__match4162241623%_
                                                 _%e4063440973%_
                                                 _%hd4063540977%_
                                                 _%tl4063640980%_
                                                 _%e4063740983%_
                                                 _%hd4063840987%_
                                                 _%tl4063940990%_
                                                 _%__splice4157641577%_
                                                 _%target4065840716%_
                                                 _%tl4066040719%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g4063140689%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g4063140689%_))))
                                (if (gx#stx-pair/null? _%hd4063840987%_)
                                    (let ((_%__splice4157641577%_
                                           (gx#syntax-split-splice->vector
                                            _%hd4063840987%_
                                            '0)))
                                      (let ((_%tl4066040719%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4157641577%_
                                                '1)))
                                            (_%target4065840716%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4157641577%_
                                                '0))))
                                        (if (gx#stx-null? _%tl4066040719%_)
                                            (_%__match4162241623%_
                                             _%e4063440973%_
                                             _%hd4063540977%_
                                             _%tl4063640980%_
                                             _%e4063740983%_
                                             _%hd4063840987%_
                                             _%tl4063940990%_
                                             _%__splice4157641577%_
                                             _%target4065840716%_
                                             _%tl4066040719%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g4063140689%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g4063140689%_))))))
                        (let () (declare (not safe)) (_%g4063140689%_)))))
                (let () (declare (not safe)) (_%g4063140689%_))))))))
  (define |gerbil/core/more-sugar[:0:]#let/cc|
    (lambda (_%$stx41056%_)
      (let* ((_%g4106041084%_
              (lambda (_%g4106141080%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4106141080%_)))
             (_%g4105941169%_
              (lambda (_%g4106141088%_)
                (if (gx#stx-pair? _%g4106141088%_)
                    (let ((_%e4106441091%_ (gx#syntax-e _%g4106141088%_)))
                      (let ((_%hd4106541095%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4106441091%_)))
                            (_%tl4106641098%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4106441091%_))))
                        (if (gx#stx-pair? _%tl4106641098%_)
                            (let ((_%e4106741101%_
                                   (gx#syntax-e _%tl4106641098%_)))
                              (let ((_%hd4106841105%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4106741101%_)))
                                    (_%tl4106941108%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4106741101%_))))
                                (if (gx#stx-pair/null? _%tl4106941108%_)
                                    (let ((_g41635_
                                           (gx#syntax-split-splice
                                            _%tl4106941108%_
                                            '0)))
                                      (begin
                                        (let ((_g41636_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g41635_)
                                                     (##values-length _g41635_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g41636_ 2)))
                                              (error "Context expects 2 values"
                                                     _g41636_)))
                                        (let ((_%target4107041111%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g41635_ 0)))
                                              (_%tl4107241114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g41635_ 1))))
                                          (if (gx#stx-null? _%tl4107241114%_)
                                              (letrec ((_%loop4107341117%_
                                                        (lambda (_%hd4107141121%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%body4107741124%_)
                  (if (gx#stx-pair? _%hd4107141121%_)
                      (let ((_%e4107441127%_ (gx#syntax-e _%hd4107141121%_)))
                        (let ((_%lp-hd4107541131%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e4107441127%_)))
                              (_%lp-tl4107641134%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e4107441127%_))))
                          (_%loop4107341117%_
                           _%lp-tl4107641134%_
                           (cons _%lp-hd4107541131%_ _%body4107741124%_))))
                      (let ((_%body4107841137%_ (reverse _%body4107741124%_)))
                        ((lambda (_%L41141%_ _%L41143%_)
                           (if (gx#identifier? _%L41143%_)
                               (cons (gx#datum->syntax '#f 'call/cc)
                                     (cons (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons (cons _%L41143%_ '())
                                                       (foldr (lambda (_%g4116041163%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%g4116141166%_)
                        (cons _%g4116041163%_ _%g4116141166%_))
                      '()
                      _%L41141%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))
                               (_%g4106041084%_ _%g4106141088%_)))
                         _%body4107841137%_
                         _%hd4106841105%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%loop4107341117%_
                                                 _%target4107041111%_
                                                 '()))
                                              (_%g4106041084%_
                                               _%g4106141088%_)))))
                                    (_%g4106041084%_ _%g4106141088%_))))
                            (_%g4106041084%_ _%g4106141088%_))))
                    (_%g4106041084%_ _%g4106141088%_)))))
        (_%g4105941169%_ _%$stx41056%_))))
  (define |gerbil/core/more-sugar[:0:]#unwind-protect|
    (lambda (_%$stx41174%_)
      (let* ((_%g4117841206%_
              (lambda (_%g4117941202%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4117941202%_)))
             (_%g4117741305%_
              (lambda (_%g4117941210%_)
                (if (gx#stx-pair? _%g4117941210%_)
                    (let ((_%e4118341213%_ (gx#syntax-e _%g4117941210%_)))
                      (let ((_%hd4118441217%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4118341213%_)))
                            (_%tl4118541220%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4118341213%_))))
                        (if (gx#stx-pair? _%tl4118541220%_)
                            (let ((_%e4118641223%_
                                   (gx#syntax-e _%tl4118541220%_)))
                              (let ((_%hd4118741227%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4118641223%_)))
                                    (_%tl4118841230%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4118641223%_))))
                                (if (gx#stx-pair? _%tl4118841230%_)
                                    (let ((_%e4118941233%_
                                           (gx#syntax-e _%tl4118841230%_)))
                                      (let ((_%hd4119041237%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e4118941233%_)))
                                            (_%tl4119141240%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e4118941233%_))))
                                        (if (gx#stx-pair/null?
                                             _%tl4119141240%_)
                                            (let ((_g41637_
                                                   (gx#syntax-split-splice
                                                    _%tl4119141240%_
                                                    '0)))
                                              (begin
                                                (let ((_g41638_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g41637_)
                                                             (##values-length
                                                              _g41637_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g41638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g41638_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target4119241243%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g41637_
                                                          0)))
                                                      (_%tl4119441246%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g41637_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl4119441246%_)
                                                      (letrec ((_%loop4119541249%_
                                                                (lambda (_%hd4119341253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%rest4119941256%_)
                          (if (gx#stx-pair? _%hd4119341253%_)
                              (let ((_%e4119641259%_
                                     (gx#syntax-e _%hd4119341253%_)))
                                (let ((_%lp-hd4119741263%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e4119641259%_)))
                                      (_%lp-tl4119841266%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e4119641259%_))))
                                  (_%loop4119541249%_
                                   _%lp-tl4119841266%_
                                   (cons _%lp-hd4119741263%_
                                         _%rest4119941256%_))))
                              (let ((_%rest4120041269%_
                                     (reverse _%rest4119941256%_)))
                                ((lambda (_%L41273%_ _%L41275%_ _%L41276%_)
                                   (cons (gx#datum->syntax
                                          '#f
                                          'with-unwind-protect)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons _%L41276%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'lambda)
                                                           (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L41275%_
                               (foldr (lambda (_%g4129641299%_ _%g4129741302%_)
                                        (cons _%g4129641299%_ _%g4129741302%_))
                                      '()
                                      _%L41273%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                 _%rest4120041269%_
                                 _%hd4119041237%_
                                 _%hd4118741227%_))))))
                (_%loop4119541249%_ _%target4119241243%_ '()))
              (_%g4117841206%_ _%g4117941210%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g4117841206%_
                                             _%g4117941210%_))))
                                    (_%g4117841206%_ _%g4117941210%_))))
                            (_%g4117841206%_ _%g4117941210%_))))
                    (_%g4117841206%_ _%g4117941210%_)))))
        (_%g4117741305%_ _%$stx41174%_))))
  (define |gerbil/core/more-sugar[:0:]#@bytes|
    (lambda (_%stx41310%_)
      (let* ((_%g4131341327%_
              (lambda (_%g4131441323%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4131441323%_)))
             (_%g4131241399%_
              (lambda (_%g4131441331%_)
                (if (gx#stx-pair? _%g4131441331%_)
                    (let ((_%e4131641334%_ (gx#syntax-e _%g4131441331%_)))
                      (let ((_%hd4131741338%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4131641334%_)))
                            (_%tl4131841341%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4131641334%_))))
                        (if (gx#stx-pair? _%tl4131841341%_)
                            (let ((_%e4131941344%_
                                   (gx#syntax-e _%tl4131841341%_)))
                              (let ((_%hd4132041348%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4131941344%_)))
                                    (_%tl4132141351%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4131941344%_))))
                                (if (gx#stx-null? _%tl4132141351%_)
                                    ((lambda (_%L41354%_)
                                       (if (gx#stx-string? _%L41354%_)
                                           (let* ((_%g4136841376%_
                                                   (lambda (_%g4136941372%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g4136941372%_)))
                                                  (_%g4136741395%_
                                                   (lambda (_%g4136941380%_)
                                                     ((lambda (_%L41383%_)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons _%L41383%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
              _%g4136941380%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g4136741395%_
                                              (string->bytes
                                               (gx#stx-e _%L41354%_))))
                                           (_%g4131341327%_ _%g4131441331%_)))
                                     _%hd4132041348%_)
                                    (_%g4131341327%_ _%g4131441331%_))))
                            (_%g4131341327%_ _%g4131441331%_))))
                    (_%g4131341327%_ _%g4131441331%_)))))
        (_%g4131241399%_ _%stx41310%_))))
  (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
    (lambda (_%stx41403%_)
      (let* ((_%g4140641420%_
              (lambda (_%g4140741416%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%g4140741416%_)))
             (_%g4140541461%_
              (lambda (_%g4140741424%_)
                (if (gx#stx-pair? _%g4140741424%_)
                    (let ((_%e4140941427%_ (gx#syntax-e _%g4140741424%_)))
                      (let ((_%hd4141041431%_
                             (let ()
                               (declare (not safe))
                               (##car _%e4140941427%_)))
                            (_%tl4141141434%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e4140941427%_))))
                        (if (gx#stx-pair? _%tl4141141434%_)
                            (let ((_%e4141241437%_
                                   (gx#syntax-e _%tl4141141434%_)))
                              (let ((_%hd4141341441%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e4141241437%_)))
                                    (_%tl4141441444%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e4141241437%_))))
                                (if (gx#stx-null? _%tl4141441444%_)
                                    ((lambda (_%L41447%_)
                                       (if (gx#current-expander-compiling?)
                                           (gx#eval-syntax _%L41447%_)
                                           '#!void)
                                       (cons (gx#datum->syntax '#f 'void) '()))
                                     _%hd4141341441%_)
                                    (_%g4140641420%_ _%g4140741424%_))))
                            (_%g4140641420%_ _%g4140741424%_))))
                    (_%g4140641420%_ _%g4140741424%_)))))
        (_%g4140541461%_ _%stx41403%_)))))
