(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g54691_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/more-sugar[1]#_g54694_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g54695_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g54696_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g54697_|
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
      (lambda _%$args50024%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _%$args50024%_)))
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
      (lambda _%$args50020%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _%$args50020%_)))
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
      (lambda (_%stx50017%_)
        (if (gx#identifier? _%stx50017%_)
            (let ((__tmp54654 (gx#syntax-local-value _%stx50017%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setf-macro::t|
               __tmp54654))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_%stx50014%_)
        (if (gx#identifier? _%stx50014%_)
            (let ((__tmp54655 (gx#syntax-local-value _%stx50014%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setq-macro::t|
               __tmp54655))
            '#f)))
    (define |gerbil/core/more-sugar[1]#expand-set!|
      (lambda (_%stx49641%_)
        (let* ((_%__stx5418354184%_ _%stx49641%_)
               (_%g4964749710%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx5418354184%_))))
          (let ((_%__kont5418654187%_
                 (lambda (_%g4964949991%_ _%g4965049993%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g4965049993%_)
                    _%stx49641%_)))
                (_%__kont5418854189%_
                 (lambda (_%g4966349880%_ _%g4966449882%_ _%g4966549883%_)
                   (let* ((_%g4990549913%_
                           (lambda (_%g4990649909%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g4990649909%_)))
                          (_%g4990449940%_
                           (lambda (_%g4990649917%_)
                             ((lambda (_%g4990749920%_)
                                (cons _%g4990749920%_
                                      (foldr (lambda (_%g4993149934%_
                                                      _%g4993249937%_)
                                               (cons _%g4993149934%_
                                                     _%g4993249937%_))
                                             (cons _%g4966349880%_ '())
                                             _%g4966449882%_)))
                              _%g4990649917%_))))
                     (_%g4990449940%_
                      (gx#stx-identifier
                       _%g4966549883%_
                       _%g4966549883%_
                       '"-set!")))))
                (_%__kont5419254193%_
                 (lambda (_%g4968749792%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%g4968749792%_)
                    _%stx49641%_)))
                (_%__kont5419454195%_
                 (lambda (_%g4969449747%_ _%g4969549749%_)
                   (cons (gx#datum->syntax '#f '%#set!)
                         (cons _%g4969549749%_ (cons _%g4969449747%_ '()))))))
            (let* ((_%__match5428254283%_
                    (lambda (_%e4969649717%_
                             _%hd4969749721%_
                             _%tl4969849724%_
                             _%e4969949727%_
                             _%hd4970049731%_
                             _%tl4970149734%_
                             _%e4970249737%_
                             _%hd4970349741%_
                             _%tl4970449744%_)
                      (let ((_%g4969449747%_ _%hd4970349741%_)
                            (_%g4969549749%_ _%hd4970049731%_))
                        (if (gx#identifier? _%g4969549749%_)
                            (_%__kont5419454195%_
                             _%g4969449747%_
                             _%g4969549749%_)
                            (let () (declare (not safe)) (_%g4964749710%_))))))
                   (_%__match5426254263%_
                    (lambda (_%e4968849772%_
                             _%hd4968949776%_
                             _%tl4969049779%_
                             _%e4969149782%_
                             _%hd4969249786%_
                             _%tl4969349789%_)
                      (let ((_%g4968749792%_ _%hd4969249786%_))
                        (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%g4968749792%_)
                            (_%__kont5419254193%_ _%g4968749792%_)
                            (if (gx#stx-pair? _%tl4969349789%_)
                                (let ((_%e4970249737%_
                                       (gx#syntax-e _%tl4969349789%_)))
                                  (let ((_%tl4970449744%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e4970249737%_)))
                                        (_%hd4970349741%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e4970249737%_))))
                                    (if (gx#stx-null? _%tl4970449744%_)
                                        (_%__match5428254283%_
                                         _%e4968849772%_
                                         _%hd4968949776%_
                                         _%tl4969049779%_
                                         _%e4969149782%_
                                         _%hd4969249786%_
                                         _%tl4969349789%_
                                         _%e4970249737%_
                                         _%hd4970349741%_
                                         _%tl4970449744%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g4964749710%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g4964749710%_)))))))
                   (_%__match5425054251%_
                    (lambda (_%e4966649812%_
                             _%hd4966749816%_
                             _%tl4966849819%_
                             _%e4966949822%_
                             _%hd4967049826%_
                             _%tl4967149829%_
                             _%e4967249832%_
                             _%hd4967349836%_
                             _%tl4967449839%_
                             _%__splice5419054191%_
                             _%target4967549842%_
                             _%tl4967749845%_)
                      (letrec ((_%loop4967849848%_
                                (lambda (_%hd4967649852%_ _%arg4968249855%_)
                                  (if (gx#stx-pair? _%hd4967649852%_)
                                      (let ((_%e4967949857%_
                                             (gx#syntax-e _%hd4967649852%_)))
                                        (let ((_%lp-tl4968149864%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e4967949857%_)))
                                              (_%lp-hd4968049861%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e4967949857%_))))
                                          (_%loop4967849848%_
                                           _%lp-tl4968149864%_
                                           (cons _%lp-hd4968049861%_
                                                 _%arg4968249855%_))))
                                      (let ((_%arg4968349867%_
                                             (reverse _%arg4968249855%_)))
                                        (if (gx#stx-pair? _%tl4967149829%_)
                                            (let ((_%e4968449870%_
                                                   (gx#syntax-e
                                                    _%tl4967149829%_)))
                                              (let ((_%tl4968649877%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e4968449870%_)))
                                                    (_%hd4968549874%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e4968449870%_))))
                                                (if (gx#stx-null?
                                                     _%tl4968649877%_)
                                                    (let ((_%g4966349880%_
                                                           _%hd4968549874%_)
                                                          (_%g4966449882%_
                                                           _%arg4968349867%_)
                                                          (_%g4966549883%_
                                                           _%hd4967349836%_))
                                                      (if (gx#identifier?
                                                           _%g4966549883%_)
                                                          (_%__kont5418854189%_
                                                           _%g4966349880%_
                                                           _%g4966449882%_
                                                           _%g4966549883%_)
                                                          (_%__match5426254263%_
                                                           _%e4966649812%_
                                                           _%hd4966749816%_
                                                           _%tl4966849819%_
                                                           _%e4966949822%_
                                                           _%hd4967049826%_
                                                           _%tl4967149829%_)))
                                                    (_%__match5426254263%_
                                                     _%e4966649812%_
                                                     _%hd4966749816%_
                                                     _%tl4966849819%_
                                                     _%e4966949822%_
                                                     _%hd4967049826%_
                                                     _%tl4967149829%_))))
                                            (_%__match5426254263%_
                                             _%e4966649812%_
                                             _%hd4966749816%_
                                             _%tl4966849819%_
                                             _%e4966949822%_
                                             _%hd4967049826%_
                                             _%tl4967149829%_)))))))
                        (_%loop4967849848%_ _%target4967549842%_ '())))))
              (if (gx#stx-pair? _%__stx5418354184%_)
                  (let ((_%e4965149951%_ (gx#syntax-e _%__stx5418354184%_)))
                    (let ((_%tl4965349958%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e4965149951%_)))
                          (_%hd4965249955%_
                           (let ()
                             (declare (not safe))
                             (##car _%e4965149951%_))))
                      (if (gx#stx-pair? _%tl4965349958%_)
                          (let ((_%e4965449961%_
                                 (gx#syntax-e _%tl4965349958%_)))
                            (let ((_%tl4965649968%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e4965449961%_)))
                                  (_%hd4965549965%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e4965449961%_))))
                              (if (gx#stx-pair? _%hd4965549965%_)
                                  (let ((_%e4965749971%_
                                         (gx#syntax-e _%hd4965549965%_)))
                                    (let ((_%tl4965949978%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e4965749971%_)))
                                          (_%hd4965849975%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e4965749971%_))))
                                      (if (gx#stx-pair? _%tl4965649968%_)
                                          (let ((_%e4966049981%_
                                                 (gx#syntax-e
                                                  _%tl4965649968%_)))
                                            (let ((_%tl4966249988%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e4966049981%_)))
                                                  (_%hd4966149985%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e4966049981%_))))
                                              (if (gx#stx-null?
                                                   _%tl4966249988%_)
                                                  (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (let ((_%g4964949991%_
                                                             _%hd4966149985%_)
                                                            (_%g4965049993%_
                                                             _%hd4965849975%_))
                                                        (_%__kont5418654187%_
                                                         _%g4964949991%_
                                                         _%g4965049993%_))
                                                      (if (gx#stx-pair/null?
                                                           _%tl4965949978%_)
                                                          (let ((_%__splice5419054191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector _%tl4965949978%_ '0)))
                    (let ((_%tl4967749845%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice5419054191%_ '1)))
                          (_%target4967549842%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice5419054191%_ '0))))
                      (if (gx#stx-null? _%tl4967749845%_)
                          (_%__match5425054251%_
                           _%e4965149951%_
                           _%hd4965249955%_
                           _%tl4965349958%_
                           _%e4965449961%_
                           _%hd4965549965%_
                           _%tl4965649968%_
                           _%e4965749971%_
                           _%hd4965849975%_
                           _%tl4965949978%_
                           _%__splice5419054191%_
                           _%target4967549842%_
                           _%tl4967749845%_)
                          (_%__match5426254263%_
                           _%e4965149951%_
                           _%hd4965249955%_
                           _%tl4965349958%_
                           _%e4965449961%_
                           _%hd4965549965%_
                           _%tl4965649968%_))))
                  (_%__match5426254263%_
                   _%e4965149951%_
                   _%hd4965249955%_
                   _%tl4965349958%_
                   _%e4965449961%_
                   _%hd4965549965%_
                   _%tl4965649968%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl4965949978%_)
                                                      (let ((_%__splice5419054191%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl4965949978%_
                                                              '0)))
                                                        (let ((_%tl4967749845%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice5419054191%_ '1)))
                      (_%target4967549842%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice5419054191%_ '0))))
                  (if (gx#stx-null? _%tl4967749845%_)
                      (_%__match5425054251%_
                       _%e4965149951%_
                       _%hd4965249955%_
                       _%tl4965349958%_
                       _%e4965449961%_
                       _%hd4965549965%_
                       _%tl4965649968%_
                       _%e4965749971%_
                       _%hd4965849975%_
                       _%tl4965949978%_
                       _%__splice5419054191%_
                       _%target4967549842%_
                       _%tl4967749845%_)
                      (_%__match5426254263%_
                       _%e4965149951%_
                       _%hd4965249955%_
                       _%tl4965349958%_
                       _%e4965449961%_
                       _%hd4965549965%_
                       _%tl4965649968%_))))
              (_%__match5426254263%_
               _%e4965149951%_
               _%hd4965249955%_
               _%tl4965349958%_
               _%e4965449961%_
               _%hd4965549965%_
               _%tl4965649968%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl4965949978%_)
                                              (let ((_%__splice5419054191%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl4965949978%_
                                                      '0)))
                                                (let ((_%tl4967749845%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice5419054191%_
                                                          '1)))
                                                      (_%target4967549842%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice5419054191%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl4967749845%_)
                                                      (_%__match5425054251%_
                                                       _%e4965149951%_
                                                       _%hd4965249955%_
                                                       _%tl4965349958%_
                                                       _%e4965449961%_
                                                       _%hd4965549965%_
                                                       _%tl4965649968%_
                                                       _%e4965749971%_
                                                       _%hd4965849975%_
                                                       _%tl4965949978%_
                                                       _%__splice5419054191%_
                                                       _%target4967549842%_
                                                       _%tl4967749845%_)
                                                      (_%__match5426254263%_
                                                       _%e4965149951%_
                                                       _%hd4965249955%_
                                                       _%tl4965349958%_
                                                       _%e4965449961%_
                                                       _%hd4965549965%_
                                                       _%tl4965649968%_))))
                                              (_%__match5426254263%_
                                               _%e4965149951%_
                                               _%hd4965249955%_
                                               _%tl4965349958%_
                                               _%e4965449961%_
                                               _%hd4965549965%_
                                               _%tl4965649968%_)))))
                                  (_%__match5426254263%_
                                   _%e4965149951%_
                                   _%hd4965249955%_
                                   _%tl4965349958%_
                                   _%e4965449961%_
                                   _%hd4965549965%_
                                   _%tl4965649968%_))))
                          (let () (declare (not safe)) (_%g4964749710%_)))))
                  (let () (declare (not safe)) (_%g4964749710%_))))))))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_%stx50029%_)
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx50029%_)))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_%stx50032%_)
        (let* ((_%g5003550059%_
                (lambda (_%g5003650055%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5003650055%_)))
               (_%g5003450233%_
                (lambda (_%g5003650063%_)
                  (if (gx#stx-pair? _%g5003650063%_)
                      (let ((_%e5003950066%_ (gx#syntax-e _%g5003650063%_)))
                        (let ((_%hd5004050070%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5003950066%_)))
                              (_%tl5004150073%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5003950066%_))))
                          (if (gx#stx-pair/null? _%tl5004150073%_)
                              (if (let ((__tmp54656
                                         (gx#stx-length _%tl5004150073%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp54656 '1))
                                  (let ((_g54657_
                                         (gx#syntax-split-splice
                                          _%tl5004150073%_
                                          '1)))
                                    (begin
                                      (let ((_g54658_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g54657_)
                                                   (##values-length _g54657_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g54658_ 2)))
                                            (error "Context expects 2 values"
                                                   _g54658_)))
                                      (let ((_%target5004250076%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g54657_ 0)))
                                            (_%tl5004450079%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g54657_ 1))))
                                        (if (gx#stx-pair? _%tl5004450079%_)
                                            (let ((_%e5005150082%_
                                                   (gx#syntax-e
                                                    _%tl5004450079%_)))
                                              (let ((_%hd5005250086%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e5005150082%_)))
                                                    (_%tl5005350089%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e5005150082%_))))
                                                (if (gx#stx-null?
                                                     _%tl5005350089%_)
                                                    (letrec ((_%loop5004550092%_
                                                              (lambda (_%hd5004350096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tgt5004950099%_)
                        (if (gx#stx-pair? _%hd5004350096%_)
                            (let ((_%e5004650101%_
                                   (gx#syntax-e _%hd5004350096%_)))
                              (let ((_%lp-hd5004750105%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5004650101%_)))
                                    (_%lp-tl5004850108%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5004650101%_))))
                                (_%loop5004550092%_
                                 _%lp-tl5004850108%_
                                 (cons _%lp-hd5004750105%_
                                       _%tgt5004950099%_))))
                            (let ((_%tgt5005050111%_
                                   (reverse _%tgt5004950099%_)))
                              ((lambda (_%g5003750114%_ _%g5003850116%_)
                                 (let* ((_%g5013450151%_
                                         (lambda (_%g5013550147%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g5013550147%_)))
                                        (_%g5013350221%_
                                         (lambda (_%g5013550155%_)
                                           (if (gx#stx-pair/null?
                                                _%g5013550155%_)
                                               (let ((_g54659_
                                                      (gx#syntax-split-splice
                                                       _%g5013550155%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g54660_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g54659_)
                        (##values-length _g54659_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g54660_ 2)))
                 (error "Context expects 2 values" _g54660_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target5013750158%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g54659_
                                                             0)))
                                                         (_%tl5013950161%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g54659_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%tl5013950161%_)
                                                         (letrec ((_%loop5014050164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd5013850168%_ _%$e5014450171%_)
                             (if (gx#stx-pair? _%hd5013850168%_)
                                 (let ((_%e5014150173%_
                                        (gx#syntax-e _%hd5013850168%_)))
                                   (let ((_%lp-hd5014250177%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e5014150173%_)))
                                         (_%lp-tl5014350180%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e5014150173%_))))
                                     (_%loop5014050164%_
                                      _%lp-tl5014350180%_
                                      (cons _%lp-hd5014250177%_
                                            _%$e5014450171%_))))
                                 (let ((_%$e5014550183%_
                                        (reverse _%$e5014450171%_)))
                                   ((lambda (_%g5013650186%_)
                                      (cons (gx#datum->syntax '#f 'let-values)
                                            (cons (cons (cons (foldr (lambda (_%g5020150207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g5020250210%_)
                               (cons _%g5020150207%_ _%g5020250210%_))
                             '()
                             _%g5013650186%_)
                      (cons _%g5003750114%_ '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%g5013650186%_
                                                     _%g5003850116%_)
                                                    (foldr (lambda (_%g5020350213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g5020450216%_
                            _%g5020550218%_)
                     (cons (cons (gx#datum->syntax '#f 'set!)
                                 (cons _%g5020450216%_
                                       (cons _%g5020350213%_ '())))
                           _%g5020550218%_))
                   '()
                   _%g5013650186%_
                   _%g5003850116%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%$e5014550183%_))))))
                   (_%loop5014050164%_ _%target5013750158%_ '()))
                 (_%g5013450151%_ _%g5013550155%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g5013450151%_
                                                _%g5013550155%_)))))
                                   (_%g5013350221%_
                                    (gx#gentemps
                                     (foldr (lambda (_%g5022450227%_
                                                     _%g5022550230%_)
                                              (cons _%g5022450227%_
                                                    _%g5022550230%_))
                                            '()
                                            _%g5003850116%_)))))
                               _%hd5005250086%_
                               _%tgt5005050111%_))))))
              (_%loop5004550092%_ _%target5004250076%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g5003550059%_
                                                     _%g5003650063%_))))
                                            (_%g5003550059%_
                                             _%g5003650063%_)))))
                                  (_%g5003550059%_ _%g5003650063%_))
                              (_%g5003550059%_ _%g5003650063%_))))
                      (_%g5003550059%_ _%g5003650063%_)))))
          (_%g5003450233%_ _%stx50032%_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_%$stx50239%_)
        (let* ((_%__stx5428554286%_ _%$stx50239%_)
               (_%g5024550333%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx5428554286%_))))
          (let ((_%__kont5428854289%_
                 (lambda (_%g5024750673%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%g5068950692%_ _%g5069050695%_)
                                        (cons _%g5068950692%_ _%g5069050695%_))
                                      '()
                                      _%g5024750673%_)))))
                (_%__kont5429254293%_
                 (lambda (_%g5026350583%_ _%g5026450585%_ _%g5026550586%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (foldr (lambda (_%g5060950612%_
                                                           _%g5061050615%_)
                                                    (cons _%g5060950612%_
                                                          _%g5061050615%_))
                                                  '()
                                                  _%g5026350583%_)))
                               (cons _%g5026550586%_
                                     (cons _%g5026450585%_ '()))))))
                (_%__kont5429654297%_
                 (lambda (_%g5029050446%_
                          _%g5029150448%_
                          _%g5029250449%_
                          _%g5029350450%_
                          _%g5029450451%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons _%g5029450451%_
                                                       (cons (foldr (lambda (_%g5048150486%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g5048250489%_)
                              (cons _%g5048150486%_ _%g5048250489%_))
                            '()
                            _%g5029150448%_)
                     (foldr (lambda (_%g5048350492%_ _%g5048450495%_)
                              (cons _%g5048350492%_ _%g5048450495%_))
                            '()
                            _%g5029050446%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%g5029350450%_
                                     (cons _%g5029250449%_ '())))))))
            (let* ((_%__match5440654407%_
                    (lambda (_%e5029550340%_
                             _%hd5029650344%_
                             _%tl5029750347%_
                             _%e5029850350%_
                             _%hd5029950354%_
                             _%tl5030050357%_
                             _%e5030150360%_
                             _%hd5030250364%_
                             _%tl5030350367%_
                             _%e5030450370%_
                             _%hd5030550374%_
                             _%tl5030650377%_
                             _%e5030750380%_
                             _%hd5030850384%_
                             _%tl5030950387%_
                             _%__splice5429854299%_
                             _%target5031050390%_
                             _%tl5031250393%_)
                      (letrec ((_%loop5031350396%_
                                (lambda (_%hd5031150400%_ _%rest5031750403%_)
                                  (if (gx#stx-pair? _%hd5031150400%_)
                                      (let ((_%e5031450405%_
                                             (gx#syntax-e _%hd5031150400%_)))
                                        (let ((_%lp-tl5031650412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5031450405%_)))
                                              (_%lp-hd5031550409%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5031450405%_))))
                                          (_%loop5031350396%_
                                           _%lp-tl5031650412%_
                                           (cons _%lp-hd5031550409%_
                                                 _%rest5031750403%_))))
                                      (let ((_%rest5031850415%_
                                             (reverse _%rest5031750403%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl5030050357%_)
                                            (let ((_%__splice5430054301%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl5030050357%_
                                                    '0)))
                                              (let ((_%tl5032150421%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5430054301%_
                                                        '1)))
                                                    (_%target5031950418%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice5430054301%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl5032150421%_)
                                                    (letrec ((_%loop5032250424%_
                                                              (lambda (_%hd5032050428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body5032650431%_)
                        (if (gx#stx-pair? _%hd5032050428%_)
                            (let ((_%e5032350433%_
                                   (gx#syntax-e _%hd5032050428%_)))
                              (let ((_%lp-tl5032550440%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e5032350433%_)))
                                    (_%lp-hd5032450437%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e5032350433%_))))
                                (_%loop5032250424%_
                                 _%lp-tl5032550440%_
                                 (cons _%lp-hd5032450437%_
                                       _%body5032650431%_))))
                            (let ((_%body5032750443%_
                                   (reverse _%body5032650431%_)))
                              (_%__kont5429654297%_
                               _%body5032750443%_
                               _%rest5031850415%_
                               _%hd5030850384%_
                               _%hd5030550374%_
                               _%hd5029650344%_))))))
              (_%loop5032250424%_ _%target5031950418%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g5024550333%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g5024550333%_))))))))
                        (_%loop5031350396%_ _%target5031050390%_ '()))))
                   (_%__match5436654367%_
                    (lambda (_%e5026650505%_
                             _%hd5026750509%_
                             _%tl5026850512%_
                             _%e5026950515%_
                             _%hd5027050519%_
                             _%tl5027150522%_
                             _%e5027250525%_
                             _%hd5027350529%_
                             _%tl5027450532%_
                             _%e5027550535%_
                             _%hd5027650539%_
                             _%tl5027750542%_
                             _%e5027850545%_
                             _%hd5027950549%_
                             _%tl5028050552%_
                             _%__splice5429454295%_
                             _%target5028150555%_
                             _%tl5028350558%_)
                      (letrec ((_%loop5028450561%_
                                (lambda (_%hd5028250565%_ _%body5028850568%_)
                                  (if (gx#stx-pair? _%hd5028250565%_)
                                      (let ((_%e5028550570%_
                                             (gx#syntax-e _%hd5028250565%_)))
                                        (let ((_%lp-tl5028750577%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5028550570%_)))
                                              (_%lp-hd5028650574%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5028550570%_))))
                                          (_%loop5028450561%_
                                           _%lp-tl5028750577%_
                                           (cons _%lp-hd5028650574%_
                                                 _%body5028850568%_))))
                                      (let ((_%body5028950580%_
                                             (reverse _%body5028850568%_)))
                                        (_%__kont5429254293%_
                                         _%body5028950580%_
                                         _%hd5027950549%_
                                         _%hd5027650539%_))))))
                        (_%loop5028450561%_ _%target5028150555%_ '()))))
                   (_%__match5432454325%_
                    (lambda (_%e5024850625%_
                             _%hd5024950629%_
                             _%tl5025050632%_
                             _%e5025150635%_
                             _%hd5025250639%_
                             _%tl5025350642%_
                             _%__splice5429054291%_
                             _%target5025450645%_
                             _%tl5025650648%_)
                      (letrec ((_%loop5025750651%_
                                (lambda (_%hd5025550655%_ _%body5026150658%_)
                                  (if (gx#stx-pair? _%hd5025550655%_)
                                      (let ((_%e5025850660%_
                                             (gx#syntax-e _%hd5025550655%_)))
                                        (let ((_%lp-tl5026050667%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5025850660%_)))
                                              (_%lp-hd5025950664%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5025850660%_))))
                                          (_%loop5025750651%_
                                           _%lp-tl5026050667%_
                                           (cons _%lp-hd5025950664%_
                                                 _%body5026150658%_))))
                                      (let ((_%body5026250670%_
                                             (reverse _%body5026150658%_)))
                                        (_%__kont5428854289%_
                                         _%body5026250670%_))))))
                        (_%loop5025750651%_ _%target5025450645%_ '())))))
              (if (gx#stx-pair? _%__stx5428554286%_)
                  (let ((_%e5024850625%_ (gx#syntax-e _%__stx5428554286%_)))
                    (let ((_%tl5025050632%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5024850625%_)))
                          (_%hd5024950629%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5024850625%_))))
                      (if (gx#stx-pair? _%tl5025050632%_)
                          (let ((_%e5025150635%_
                                 (gx#syntax-e _%tl5025050632%_)))
                            (let ((_%tl5025350642%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5025150635%_)))
                                  (_%hd5025250639%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5025150635%_))))
                              (if (gx#stx-null? _%hd5025250639%_)
                                  (if (gx#stx-pair/null? _%tl5025350642%_)
                                      (let ((_%__splice5429054291%_
                                             (gx#syntax-split-splice->vector
                                              _%tl5025350642%_
                                              '0)))
                                        (let ((_%tl5025650648%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5429054291%_
                                                  '1)))
                                              (_%target5025450645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice5429054291%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl5025650648%_)
                                              (_%__match5432454325%_
                                               _%e5024850625%_
                                               _%hd5024950629%_
                                               _%tl5025050632%_
                                               _%e5025150635%_
                                               _%hd5025250639%_
                                               _%tl5025350642%_
                                               _%__splice5429054291%_
                                               _%target5025450645%_
                                               _%tl5025650648%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g5024550333%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5024550333%_)))
                                  (if (gx#stx-pair? _%hd5025250639%_)
                                      (let ((_%e5027250525%_
                                             (gx#syntax-e _%hd5025250639%_)))
                                        (let ((_%tl5027450532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5027250525%_)))
                                              (_%hd5027350529%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5027250525%_))))
                                          (if (gx#stx-pair? _%hd5027350529%_)
                                              (let ((_%e5027550535%_
                                                     (gx#syntax-e
                                                      _%hd5027350529%_)))
                                                (let ((_%tl5027750542%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5027550535%_)))
                                                      (_%hd5027650539%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5027550535%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl5027750542%_)
                                                      (let ((_%e5027850545%_
                                                             (gx#syntax-e
                                                              _%tl5027750542%_)))
                                                        (let ((_%tl5028050552%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e5027850545%_)))
                      (_%hd5027950549%_
                       (let () (declare (not safe)) (##car _%e5027850545%_))))
                  (if (gx#stx-null? _%tl5028050552%_)
                      (if (gx#stx-null? _%tl5027450532%_)
                          (if (gx#stx-pair/null? _%tl5025350642%_)
                              (let ((_%__splice5429454295%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5025350642%_
                                      '0)))
                                (let ((_%tl5028350558%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice5429454295%_
                                          '1)))
                                      (_%target5028150555%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice5429454295%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5028350558%_)
                                      (_%__match5436654367%_
                                       _%e5024850625%_
                                       _%hd5024950629%_
                                       _%tl5025050632%_
                                       _%e5025150635%_
                                       _%hd5025250639%_
                                       _%tl5025350642%_
                                       _%e5027250525%_
                                       _%hd5027350529%_
                                       _%tl5027450532%_
                                       _%e5027550535%_
                                       _%hd5027650539%_
                                       _%tl5027750542%_
                                       _%e5027850545%_
                                       _%hd5027950549%_
                                       _%tl5028050552%_
                                       _%__splice5429454295%_
                                       _%target5028150555%_
                                       _%tl5028350558%_)
                                      (if (gx#stx-pair/null? _%tl5027450532%_)
                                          (let ((_%__splice5429854299%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl5027450532%_
                                                  '0)))
                                            (let ((_%tl5031250393%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice5429854299%_
                                                      '1)))
                                                  (_%target5031050390%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice5429854299%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl5031250393%_)
                                                  (_%__match5440654407%_
                                                   _%e5024850625%_
                                                   _%hd5024950629%_
                                                   _%tl5025050632%_
                                                   _%e5025150635%_
                                                   _%hd5025250639%_
                                                   _%tl5025350642%_
                                                   _%e5027250525%_
                                                   _%hd5027350529%_
                                                   _%tl5027450532%_
                                                   _%e5027550535%_
                                                   _%hd5027650539%_
                                                   _%tl5027750542%_
                                                   _%e5027850545%_
                                                   _%hd5027950549%_
                                                   _%tl5028050552%_
                                                   _%__splice5429854299%_
                                                   _%target5031050390%_
                                                   _%tl5031250393%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g5024550333%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g5024550333%_))))))
                              (if (gx#stx-pair/null? _%tl5027450532%_)
                                  (let ((_%__splice5429854299%_
                                         (gx#syntax-split-splice->vector
                                          _%tl5027450532%_
                                          '0)))
                                    (let ((_%tl5031250393%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice5429854299%_
                                              '1)))
                                          (_%target5031050390%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice5429854299%_
                                              '0))))
                                      (if (gx#stx-null? _%tl5031250393%_)
                                          (_%__match5440654407%_
                                           _%e5024850625%_
                                           _%hd5024950629%_
                                           _%tl5025050632%_
                                           _%e5025150635%_
                                           _%hd5025250639%_
                                           _%tl5025350642%_
                                           _%e5027250525%_
                                           _%hd5027350529%_
                                           _%tl5027450532%_
                                           _%e5027550535%_
                                           _%hd5027650539%_
                                           _%tl5027750542%_
                                           _%e5027850545%_
                                           _%hd5027950549%_
                                           _%tl5028050552%_
                                           _%__splice5429854299%_
                                           _%target5031050390%_
                                           _%tl5031250393%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5024550333%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g5024550333%_))))
                          (if (gx#stx-pair/null? _%tl5027450532%_)
                              (let ((_%__splice5429854299%_
                                     (gx#syntax-split-splice->vector
                                      _%tl5027450532%_
                                      '0)))
                                (let ((_%tl5031250393%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice5429854299%_
                                          '1)))
                                      (_%target5031050390%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice5429854299%_
                                          '0))))
                                  (if (gx#stx-null? _%tl5031250393%_)
                                      (_%__match5440654407%_
                                       _%e5024850625%_
                                       _%hd5024950629%_
                                       _%tl5025050632%_
                                       _%e5025150635%_
                                       _%hd5025250639%_
                                       _%tl5025350642%_
                                       _%e5027250525%_
                                       _%hd5027350529%_
                                       _%tl5027450532%_
                                       _%e5027550535%_
                                       _%hd5027650539%_
                                       _%tl5027750542%_
                                       _%e5027850545%_
                                       _%hd5027950549%_
                                       _%tl5028050552%_
                                       _%__splice5429854299%_
                                       _%target5031050390%_
                                       _%tl5031250393%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g5024550333%_)))))
                              (let () (declare (not safe)) (_%g5024550333%_))))
                      (let () (declare (not safe)) (_%g5024550333%_)))))
              (let () (declare (not safe)) (_%g5024550333%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g5024550333%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g5024550333%_))))))
                          (let () (declare (not safe)) (_%g5024550333%_)))))
                  (let () (declare (not safe)) (_%g5024550333%_))))))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_%$stx50706%_)
        (let* ((_%g5071050734%_
                (lambda (_%g5071150730%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5071150730%_)))
               (_%g5070950817%_
                (lambda (_%g5071150738%_)
                  (if (gx#stx-pair? _%g5071150738%_)
                      (let ((_%e5071450741%_ (gx#syntax-e _%g5071150738%_)))
                        (let ((_%hd5071550745%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5071450741%_)))
                              (_%tl5071650748%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5071450741%_))))
                          (if (gx#stx-pair? _%tl5071650748%_)
                              (let ((_%e5071750751%_
                                     (gx#syntax-e _%tl5071650748%_)))
                                (let ((_%hd5071850755%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5071750751%_)))
                                      (_%tl5071950758%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5071750751%_))))
                                  (if (gx#stx-pair/null? _%tl5071950758%_)
                                      (let ((_g54661_
                                             (gx#syntax-split-splice
                                              _%tl5071950758%_
                                              '0)))
                                        (begin
                                          (let ((_g54662_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g54661_)
                                                       (##values-length
                                                        _g54661_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g54662_ 2)))
                                                (error "Context expects 2 values"
                                                       _g54662_)))
                                          (let ((_%target5072050761%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g54661_ 0)))
                                                (_%tl5072250764%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g54661_ 1))))
                                            (if (gx#stx-null? _%tl5072250764%_)
                                                (letrec ((_%loop5072350767%_
                                                          (lambda (_%hd5072150771%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body5072750774%_)
                    (if (gx#stx-pair? _%hd5072150771%_)
                        (let ((_%e5072450776%_ (gx#syntax-e _%hd5072150771%_)))
                          (let ((_%lp-hd5072550780%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5072450776%_)))
                                (_%lp-tl5072650783%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5072450776%_))))
                            (_%loop5072350767%_
                             _%lp-tl5072650783%_
                             (cons _%lp-hd5072550780%_ _%body5072750774%_))))
                        (let ((_%body5072850786%_
                               (reverse _%body5072750774%_)))
                          ((lambda (_%g5071250789%_ _%g5071350791%_)
                             (if (gx#identifier? _%g5071350791%_)
                                 (cons (gx#datum->syntax '#f 'call/cc)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'lambda)
                                                   (cons (cons _%g5071350791%_
                                                               '())
                                                         (foldr (lambda (_%g5080850811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g5080950814%_)
                          (cons _%g5080850811%_ _%g5080950814%_))
                        '()
                        _%g5071250789%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))
                                 (_%g5071050734%_ _%g5071150738%_)))
                           _%body5072850786%_
                           _%hd5071850755%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop5072350767%_
                                                   _%target5072050761%_
                                                   '()))
                                                (_%g5071050734%_
                                                 _%g5071150738%_)))))
                                      (_%g5071050734%_ _%g5071150738%_))))
                              (_%g5071050734%_ _%g5071150738%_))))
                      (_%g5071050734%_ _%g5071150738%_)))))
          (_%g5070950817%_ _%$stx50706%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_%$stx50822%_)
        (let* ((_%g5082650854%_
                (lambda (_%g5082750850%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5082750850%_)))
               (_%g5082550951%_
                (lambda (_%g5082750858%_)
                  (if (gx#stx-pair? _%g5082750858%_)
                      (let ((_%e5083150861%_ (gx#syntax-e _%g5082750858%_)))
                        (let ((_%hd5083250865%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5083150861%_)))
                              (_%tl5083350868%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5083150861%_))))
                          (if (gx#stx-pair? _%tl5083350868%_)
                              (let ((_%e5083450871%_
                                     (gx#syntax-e _%tl5083350868%_)))
                                (let ((_%hd5083550875%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5083450871%_)))
                                      (_%tl5083650878%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5083450871%_))))
                                  (if (gx#stx-pair? _%tl5083650878%_)
                                      (let ((_%e5083750881%_
                                             (gx#syntax-e _%tl5083650878%_)))
                                        (let ((_%hd5083850885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5083750881%_)))
                                              (_%tl5083950888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5083750881%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5083950888%_)
                                              (let ((_g54663_
                                                     (gx#syntax-split-splice
                                                      _%tl5083950888%_
                                                      '0)))
                                                (begin
                                                  (let ((_g54664_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g54663_)
                                                               (##values-length
                                                                _g54663_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g54664_ 2)))
                (error "Context expects 2 values" _g54664_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target5084050891%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g54663_
                                                            0)))
                                                        (_%tl5084250894%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g54663_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl5084250894%_)
                                                        (letrec ((_%loop5084350897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd5084150901%_ _%rest5084750904%_)
                            (if (gx#stx-pair? _%hd5084150901%_)
                                (let ((_%e5084450906%_
                                       (gx#syntax-e _%hd5084150901%_)))
                                  (let ((_%lp-hd5084550910%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5084450906%_)))
                                        (_%lp-tl5084650913%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5084450906%_))))
                                    (_%loop5084350897%_
                                     _%lp-tl5084650913%_
                                     (cons _%lp-hd5084550910%_
                                           _%rest5084750904%_))))
                                (let ((_%rest5084850916%_
                                       (reverse _%rest5084750904%_)))
                                  ((lambda (_%g5082850919%_
                                            _%g5082950921%_
                                            _%g5083050922%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'with-unwind-protect)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'lambda)
                                                       (cons '()
                                                             (cons _%g5083050922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'lambda)
                                                             (cons '()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%g5082950921%_
                                 (foldr (lambda (_%g5094250945%_
                                                 _%g5094350948%_)
                                          (cons _%g5094250945%_
                                                _%g5094350948%_))
                                        '()
                                        _%g5082850919%_))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%rest5084850916%_
                                   _%hd5083850885%_
                                   _%hd5083550875%_))))))
                  (_%loop5084350897%_ _%target5084050891%_ '()))
                (_%g5082650854%_ _%g5082750858%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5082650854%_
                                               _%g5082750858%_))))
                                      (_%g5082650854%_ _%g5082750858%_))))
                              (_%g5082650854%_ _%g5082750858%_))))
                      (_%g5082650854%_ _%g5082750858%_)))))
          (_%g5082550951%_ _%$stx50822%_))))
    (define |gerbil/core/more-sugar[:0:]#do|
      (lambda (_%$stx50956%_)
        (let* ((_%g5096051031%_
                (lambda (_%g5096151027%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5096151027%_)))
               (_%g5095951308%_
                (lambda (_%g5096151035%_)
                  (if (gx#stx-pair? _%g5096151035%_)
                      (let ((_%e5096851038%_ (gx#syntax-e _%g5096151035%_)))
                        (let ((_%hd5096951042%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5096851038%_)))
                              (_%tl5097051045%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5096851038%_))))
                          (if (gx#stx-pair? _%tl5097051045%_)
                              (let ((_%e5097151048%_
                                     (gx#syntax-e _%tl5097051045%_)))
                                (let ((_%hd5097251052%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5097151048%_)))
                                      (_%tl5097351055%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5097151048%_))))
                                  (if (gx#stx-pair/null? _%hd5097251052%_)
                                      (let ((_g54665_
                                             (gx#syntax-split-splice
                                              _%hd5097251052%_
                                              '0)))
                                        (begin
                                          (let ((_g54666_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g54665_)
                                                       (##values-length
                                                        _g54665_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g54666_ 2)))
                                                (error "Context expects 2 values"
                                                       _g54666_)))
                                          (let ((_%target5097451058%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g54665_ 0)))
                                                (_%tl5097651061%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g54665_ 1))))
                                            (if (gx#stx-null? _%tl5097651061%_)
                                                (letrec ((_%loop5097751064%_
                                                          (lambda (_%hd5097551068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step5098151071%_
                           _%init5098251072%_
                           _%var5098351073%_)
                    (if (gx#stx-pair? _%hd5097551068%_)
                        (let ((_%e5097851075%_ (gx#syntax-e _%hd5097551068%_)))
                          (let ((_%lp-hd5097951079%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5097851075%_)))
                                (_%lp-tl5098051082%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5097851075%_))))
                            (if (gx#stx-pair? _%lp-hd5097951079%_)
                                (let ((_%e5098751085%_
                                       (gx#syntax-e _%lp-hd5097951079%_)))
                                  (let ((_%hd5098851089%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5098751085%_)))
                                        (_%tl5098951092%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5098751085%_))))
                                    (if (gx#stx-pair? _%tl5098951092%_)
                                        (let ((_%e5099051095%_
                                               (gx#syntax-e _%tl5098951092%_)))
                                          (let ((_%hd5099151099%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5099051095%_)))
                                                (_%tl5099251102%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5099051095%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl5099251102%_)
                                                (let ((_g54667_
                                                       (gx#syntax-split-splice
                                                        _%tl5099251102%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g54668_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g54667_)
                         (##values-length _g54667_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g54668_ 2)))
                  (error "Context expects 2 values" _g54668_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target5099351105%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g54667_
                                                              0)))
                                                          (_%tl5099551108%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g54667_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl5099551108%_)
                                                          (letrec ((_%loop5099651111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd5099451115%_ _%step5100051118%_)
                              (if (gx#stx-pair? _%hd5099451115%_)
                                  (let ((_%e5099751120%_
                                         (gx#syntax-e _%hd5099451115%_)))
                                    (let ((_%lp-hd5099851124%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5099751120%_)))
                                          (_%lp-tl5099951127%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5099751120%_))))
                                      (_%loop5099651111%_
                                       _%lp-tl5099951127%_
                                       (cons _%lp-hd5099851124%_
                                             _%step5100051118%_))))
                                  (let ((_%step5100151130%_
                                         (reverse _%step5100051118%_)))
                                    (_%loop5097751064%_
                                     _%lp-tl5098051082%_
                                     (cons _%step5100151130%_
                                           _%step5098151071%_)
                                     (cons _%hd5099151099%_ _%init5098251072%_)
                                     (cons _%hd5098851089%_
                                           _%var5098351073%_)))))))
                    (_%loop5099651111%_ _%target5099351105%_ '()))
                  (_%g5096051031%_ _%g5096151035%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5096051031%_
                                                 _%g5096151035%_))))
                                        (_%g5096051031%_ _%g5096151035%_))))
                                (_%g5096051031%_ _%g5096151035%_))))
                        (let ((_%step5098451133%_ (reverse _%step5098151071%_))
                              (_%init5098551135%_ (reverse _%init5098251072%_))
                              (_%var5098651136%_ (reverse _%var5098351073%_)))
                          (if (gx#stx-pair? _%tl5097351055%_)
                              (let ((_%e5100251138%_
                                     (gx#syntax-e _%tl5097351055%_)))
                                (let ((_%hd5100351142%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5100251138%_)))
                                      (_%tl5100451145%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5100251138%_))))
                                  (if (gx#stx-pair? _%hd5100351142%_)
                                      (let ((_%e5100551148%_
                                             (gx#syntax-e _%hd5100351142%_)))
                                        (let ((_%hd5100651152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5100551148%_)))
                                              (_%tl5100751155%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5100551148%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5100751155%_)
                                              (let ((_g54669_
                                                     (gx#syntax-split-splice
                                                      _%tl5100751155%_
                                                      '0)))
                                                (begin
                                                  (let ((_g54670_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g54669_)
                                                               (##values-length
                                                                _g54669_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g54670_ 2)))
                (error "Context expects 2 values" _g54670_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target5100851158%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g54669_
                                                            0)))
                                                        (_%tl5101051161%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g54669_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl5101051161%_)
                                                        (letrec ((_%loop5101151164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd5100951168%_ _%fini5101551171%_)
                            (if (gx#stx-pair? _%hd5100951168%_)
                                (let ((_%e5101251173%_
                                       (gx#syntax-e _%hd5100951168%_)))
                                  (let ((_%lp-hd5101351177%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5101251173%_)))
                                        (_%lp-tl5101451180%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5101251173%_))))
                                    (_%loop5101151164%_
                                     _%lp-tl5101451180%_
                                     (cons _%lp-hd5101351177%_
                                           _%fini5101551171%_))))
                                (let ((_%fini5101651183%_
                                       (reverse _%fini5101551171%_)))
                                  (if (gx#stx-pair/null? _%tl5100451145%_)
                                      (let ((_g54671_
                                             (gx#syntax-split-splice
                                              _%tl5100451145%_
                                              '0)))
                                        (begin
                                          (let ((_g54672_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g54671_)
                                                       (##values-length
                                                        _g54671_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g54672_ 2)))
                                                (error "Context expects 2 values"
                                                       _g54672_)))
                                          (let ((_%target5101751186%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g54671_ 0)))
                                                (_%tl5101951189%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g54671_ 1))))
                                            (if (gx#stx-null? _%tl5101951189%_)
                                                (letrec ((_%loop5102051192%_
                                                          (lambda (_%hd5101851196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body5102451199%_)
                    (if (gx#stx-pair? _%hd5101851196%_)
                        (let ((_%e5102151201%_ (gx#syntax-e _%hd5101851196%_)))
                          (let ((_%lp-hd5102251205%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5102151201%_)))
                                (_%lp-tl5102351208%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5102151201%_))))
                            (_%loop5102051192%_
                             _%lp-tl5102351208%_
                             (cons _%lp-hd5102251205%_ _%body5102451199%_))))
                        (let ((_%body5102551211%_
                               (reverse _%body5102451199%_)))
                          ((lambda (_%g5096251214%_
                                    _%g5096351216%_
                                    _%g5096451217%_
                                    _%g5096551218%_
                                    _%g5096651219%_
                                    _%g5096751220%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g5125351256%_
                                                  _%g5125451259%_)
                                           (cons _%g5125351256%_
                                                 _%g5125451259%_))
                                         '()
                                         _%g5096751220%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%g5096651219%_
                                                      _%g5096751220%_)
                                                     (foldr (lambda (_%g5126151274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5126251277%_
                             _%g5126351279%_)
                      (cons (cons _%g5126251277%_ (cons _%g5126151274%_ '()))
                            _%g5126351279%_))
                    '()
                    _%g5096651219%_
                    _%g5096751220%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons _%g5096451217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (cons '#!void
                                               (foldr (lambda (_%g5126451282%_
                                                               _%g5126551285%_)
                                                        (cons _%g5126451282%_
                                                              _%g5126551285%_))
                                                      '()
                                                      _%g5096351216%_)))
                                   (cons (cons (gx#datum->syntax '#f 'let)
                                               (cons '()
                                                     (foldr (lambda (_%g5126651288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5126751291%_)
                      (cons _%g5126651288%_ _%g5126751291%_))
                    (cons (cons (gx#datum->syntax '#f '$loop)
                                (begin
                                  (gx#syntax-check-splice-targets
                                   _%g5096551218%_
                                   _%g5096751220%_)
                                  (foldr (lambda (_%g5126851294%_
                                                  _%g5126951297%_
                                                  _%g5127051299%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin)
                                                       (cons _%g5126951297%_
                                                             (foldr (lambda (_%g5127151302%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%g5127251305%_)
                              (cons _%g5127151302%_ _%g5127251305%_))
                            '()
                            _%g5126851294%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g5127051299%_))
                                         '()
                                         _%g5096551218%_
                                         _%g5096751220%_)))
                          '())
                    _%g5096251214%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '()))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g5096051031%_ _%g5096151035%_)))
                           _%body5102551211%_
                           _%fini5101651183%_
                           _%hd5100651152%_
                           _%step5098451133%_
                           _%init5098551135%_
                           _%var5098651136%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop5102051192%_
                                                   _%target5101751186%_
                                                   '()))
                                                (_%g5096051031%_
                                                 _%g5096151035%_)))))
                                      (_%g5096051031%_ _%g5096151035%_)))))))
                  (_%loop5101151164%_ _%target5100851158%_ '()))
                (_%g5096051031%_ _%g5096151035%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5096051031%_
                                               _%g5096151035%_))))
                                      (_%g5096051031%_ _%g5096151035%_))))
                              (_%g5096051031%_ _%g5096151035%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop5097751064%_
                                                   _%target5097451058%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g5096051031%_
                                                 _%g5096151035%_)))))
                                      (_%g5096051031%_ _%g5096151035%_))))
                              (_%g5096051031%_ _%g5096151035%_))))
                      (_%g5096051031%_ _%g5096151035%_)))))
          (_%g5095951308%_ _%$stx50956%_))))
    (define |gerbil/core/more-sugar[:0:]#do-while|
      (lambda (_%$stx51316%_)
        (let* ((_%g5132051391%_
                (lambda (_%g5132151387%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5132151387%_)))
               (_%g5131951668%_
                (lambda (_%g5132151395%_)
                  (if (gx#stx-pair? _%g5132151395%_)
                      (let ((_%e5132851398%_ (gx#syntax-e _%g5132151395%_)))
                        (let ((_%hd5132951402%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5132851398%_)))
                              (_%tl5133051405%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5132851398%_))))
                          (if (gx#stx-pair? _%tl5133051405%_)
                              (let ((_%e5133151408%_
                                     (gx#syntax-e _%tl5133051405%_)))
                                (let ((_%hd5133251412%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5133151408%_)))
                                      (_%tl5133351415%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5133151408%_))))
                                  (if (gx#stx-pair/null? _%hd5133251412%_)
                                      (let ((_g54673_
                                             (gx#syntax-split-splice
                                              _%hd5133251412%_
                                              '0)))
                                        (begin
                                          (let ((_g54674_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g54673_)
                                                       (##values-length
                                                        _g54673_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g54674_ 2)))
                                                (error "Context expects 2 values"
                                                       _g54674_)))
                                          (let ((_%target5133451418%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g54673_ 0)))
                                                (_%tl5133651421%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g54673_ 1))))
                                            (if (gx#stx-null? _%tl5133651421%_)
                                                (letrec ((_%loop5133751424%_
                                                          (lambda (_%hd5133551428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step5134151431%_
                           _%init5134251432%_
                           _%var5134351433%_)
                    (if (gx#stx-pair? _%hd5133551428%_)
                        (let ((_%e5133851435%_ (gx#syntax-e _%hd5133551428%_)))
                          (let ((_%lp-hd5133951439%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5133851435%_)))
                                (_%lp-tl5134051442%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5133851435%_))))
                            (if (gx#stx-pair? _%lp-hd5133951439%_)
                                (let ((_%e5134751445%_
                                       (gx#syntax-e _%lp-hd5133951439%_)))
                                  (let ((_%hd5134851449%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5134751445%_)))
                                        (_%tl5134951452%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5134751445%_))))
                                    (if (gx#stx-pair? _%tl5134951452%_)
                                        (let ((_%e5135051455%_
                                               (gx#syntax-e _%tl5134951452%_)))
                                          (let ((_%hd5135151459%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e5135051455%_)))
                                                (_%tl5135251462%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e5135051455%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl5135251462%_)
                                                (let ((_g54675_
                                                       (gx#syntax-split-splice
                                                        _%tl5135251462%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g54676_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g54675_)
                         (##values-length _g54675_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g54676_ 2)))
                  (error "Context expects 2 values" _g54676_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target5135351465%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g54675_
                                                              0)))
                                                          (_%tl5135551468%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g54675_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl5135551468%_)
                                                          (letrec ((_%loop5135651471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd5135451475%_ _%step5136051478%_)
                              (if (gx#stx-pair? _%hd5135451475%_)
                                  (let ((_%e5135751480%_
                                         (gx#syntax-e _%hd5135451475%_)))
                                    (let ((_%lp-hd5135851484%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5135751480%_)))
                                          (_%lp-tl5135951487%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5135751480%_))))
                                      (_%loop5135651471%_
                                       _%lp-tl5135951487%_
                                       (cons _%lp-hd5135851484%_
                                             _%step5136051478%_))))
                                  (let ((_%step5136151490%_
                                         (reverse _%step5136051478%_)))
                                    (_%loop5133751424%_
                                     _%lp-tl5134051442%_
                                     (cons _%step5136151490%_
                                           _%step5134151431%_)
                                     (cons _%hd5135151459%_ _%init5134251432%_)
                                     (cons _%hd5134851449%_
                                           _%var5134351433%_)))))))
                    (_%loop5135651471%_ _%target5135351465%_ '()))
                  (_%g5132051391%_ _%g5132151395%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g5132051391%_
                                                 _%g5132151395%_))))
                                        (_%g5132051391%_ _%g5132151395%_))))
                                (_%g5132051391%_ _%g5132151395%_))))
                        (let ((_%step5134451493%_ (reverse _%step5134151431%_))
                              (_%init5134551495%_ (reverse _%init5134251432%_))
                              (_%var5134651496%_ (reverse _%var5134351433%_)))
                          (if (gx#stx-pair? _%tl5133351415%_)
                              (let ((_%e5136251498%_
                                     (gx#syntax-e _%tl5133351415%_)))
                                (let ((_%hd5136351502%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5136251498%_)))
                                      (_%tl5136451505%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5136251498%_))))
                                  (if (gx#stx-pair? _%hd5136351502%_)
                                      (let ((_%e5136551508%_
                                             (gx#syntax-e _%hd5136351502%_)))
                                        (let ((_%hd5136651512%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e5136551508%_)))
                                              (_%tl5136751515%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e5136551508%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl5136751515%_)
                                              (let ((_g54677_
                                                     (gx#syntax-split-splice
                                                      _%tl5136751515%_
                                                      '0)))
                                                (begin
                                                  (let ((_g54678_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g54677_)
                                                               (##values-length
                                                                _g54677_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g54678_ 2)))
                (error "Context expects 2 values" _g54678_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target5136851518%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g54677_
                                                            0)))
                                                        (_%tl5137051521%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g54677_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl5137051521%_)
                                                        (letrec ((_%loop5137151524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd5136951528%_ _%fini5137551531%_)
                            (if (gx#stx-pair? _%hd5136951528%_)
                                (let ((_%e5137251533%_
                                       (gx#syntax-e _%hd5136951528%_)))
                                  (let ((_%lp-hd5137351537%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5137251533%_)))
                                        (_%lp-tl5137451540%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5137251533%_))))
                                    (_%loop5137151524%_
                                     _%lp-tl5137451540%_
                                     (cons _%lp-hd5137351537%_
                                           _%fini5137551531%_))))
                                (let ((_%fini5137651543%_
                                       (reverse _%fini5137551531%_)))
                                  (if (gx#stx-pair/null? _%tl5136451505%_)
                                      (let ((_g54679_
                                             (gx#syntax-split-splice
                                              _%tl5136451505%_
                                              '0)))
                                        (begin
                                          (let ((_g54680_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g54679_)
                                                       (##values-length
                                                        _g54679_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g54680_ 2)))
                                                (error "Context expects 2 values"
                                                       _g54680_)))
                                          (let ((_%target5137751546%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g54679_ 0)))
                                                (_%tl5137951549%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g54679_ 1))))
                                            (if (gx#stx-null? _%tl5137951549%_)
                                                (letrec ((_%loop5138051552%_
                                                          (lambda (_%hd5137851556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body5138451559%_)
                    (if (gx#stx-pair? _%hd5137851556%_)
                        (let ((_%e5138151561%_ (gx#syntax-e _%hd5137851556%_)))
                          (let ((_%lp-hd5138251565%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5138151561%_)))
                                (_%lp-tl5138351568%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5138151561%_))))
                            (_%loop5138051552%_
                             _%lp-tl5138351568%_
                             (cons _%lp-hd5138251565%_ _%body5138451559%_))))
                        (let ((_%body5138551571%_
                               (reverse _%body5138451559%_)))
                          ((lambda (_%g5132251574%_
                                    _%g5132351576%_
                                    _%g5132451577%_
                                    _%g5132551578%_
                                    _%g5132651579%_
                                    _%g5132751580%_)
                             (if (gx#stx-andmap
                                  gx#identifier?
                                  (foldr (lambda (_%g5161351616%_
                                                  _%g5161451619%_)
                                           (cons _%g5161351616%_
                                                 _%g5161451619%_))
                                         '()
                                         _%g5132751580%_))
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (gx#datum->syntax '#f '$loop)
                                             (cons (begin
                                                     (gx#syntax-check-splice-targets
                                                      _%g5132651579%_
                                                      _%g5132751580%_)
                                                     (foldr (lambda (_%g5162151634%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g5162251637%_
                             _%g5162351639%_)
                      (cons (cons _%g5162251637%_ (cons _%g5162151634%_ '()))
                            _%g5162351639%_))
                    '()
                    _%g5132651579%_
                    _%g5132751580%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (foldr (lambda (_%g5162451642%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5162551645%_)
                    (cons _%g5162451642%_ _%g5162551645%_))
                  (cons (cons (gx#datum->syntax '#f 'if)
                              (cons _%g5132451577%_
                                    (cons (cons (gx#datum->syntax '#f '$loop)
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%g5132551578%_
                                                   _%g5132751580%_)
                                                  (foldr (lambda (_%g5162651648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g5162751651%_
                          _%g5162851653%_)
                   (cons (cons (gx#datum->syntax '#f 'begin)
                               (cons _%g5162751651%_
                                     (foldr (lambda (_%g5162951656%_
                                                     _%g5163051659%_)
                                              (cons _%g5162951656%_
                                                    _%g5163051659%_))
                                            '()
                                            _%g5162651648%_)))
                         _%g5162851653%_))
                 '()
                 _%g5132551578%_
                 _%g5132751580%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'begin)
                                                      (cons '#!void
                                                            (foldr (lambda (_%g5163151662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%g5163251665%_)
                             (cons _%g5163151662%_ _%g5163251665%_))
                           '()
                           _%g5132351576%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())
                  _%g5132251574%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (_%g5132051391%_ _%g5132151395%_)))
                           _%body5138551571%_
                           _%fini5137651543%_
                           _%hd5136651512%_
                           _%step5134451493%_
                           _%init5134551495%_
                           _%var5134651496%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop5138051552%_
                                                   _%target5137751546%_
                                                   '()))
                                                (_%g5132051391%_
                                                 _%g5132151395%_)))))
                                      (_%g5132051391%_ _%g5132151395%_)))))))
                  (_%loop5137151524%_ _%target5136851518%_ '()))
                (_%g5132051391%_ _%g5132151395%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g5132051391%_
                                               _%g5132151395%_))))
                                      (_%g5132051391%_ _%g5132151395%_))))
                              (_%g5132051391%_ _%g5132151395%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop5133751424%_
                                                   _%target5133451418%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g5132051391%_
                                                 _%g5132151395%_)))))
                                      (_%g5132051391%_ _%g5132151395%_))))
                              (_%g5132051391%_ _%g5132151395%_))))
                      (_%g5132051391%_ _%g5132151395%_)))))
          (_%g5131951668%_ _%$stx51316%_))))
    (define |gerbil/core/more-sugar[:0:]#while|
      (lambda (_%$stx51676%_)
        (let* ((_%g5168051704%_
                (lambda (_%g5168151700%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5168151700%_)))
               (_%g5167951787%_
                (lambda (_%g5168151708%_)
                  (if (gx#stx-pair? _%g5168151708%_)
                      (let ((_%e5168451711%_ (gx#syntax-e _%g5168151708%_)))
                        (let ((_%hd5168551715%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5168451711%_)))
                              (_%tl5168651718%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5168451711%_))))
                          (if (gx#stx-pair? _%tl5168651718%_)
                              (let ((_%e5168751721%_
                                     (gx#syntax-e _%tl5168651718%_)))
                                (let ((_%hd5168851725%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5168751721%_)))
                                      (_%tl5168951728%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5168751721%_))))
                                  (if (gx#stx-pair/null? _%tl5168951728%_)
                                      (let ((_g54681_
                                             (gx#syntax-split-splice
                                              _%tl5168951728%_
                                              '0)))
                                        (begin
                                          (let ((_g54682_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g54681_)
                                                       (##values-length
                                                        _g54681_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g54682_ 2)))
                                                (error "Context expects 2 values"
                                                       _g54682_)))
                                          (let ((_%target5169051731%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g54681_ 0)))
                                                (_%tl5169251734%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g54681_ 1))))
                                            (if (gx#stx-null? _%tl5169251734%_)
                                                (letrec ((_%loop5169351737%_
                                                          (lambda (_%hd5169151741%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body5169751744%_)
                    (if (gx#stx-pair? _%hd5169151741%_)
                        (let ((_%e5169451746%_ (gx#syntax-e _%hd5169151741%_)))
                          (let ((_%lp-hd5169551750%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5169451746%_)))
                                (_%lp-tl5169651753%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5169451746%_))))
                            (_%loop5169351737%_
                             _%lp-tl5169651753%_
                             (cons _%lp-hd5169551750%_ _%body5169751744%_))))
                        (let ((_%body5169851756%_
                               (reverse _%body5169751744%_)))
                          ((lambda (_%g5168251759%_ _%g5168351761%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'when)
                                                           (cons _%g5168351761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g5177851781%_ _%g5177951784%_)
                                  (cons _%g5177851781%_ _%g5177951784%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%g5168251759%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body5169851756%_
                           _%hd5168851725%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop5169351737%_
                                                   _%target5169051731%_
                                                   '()))
                                                (_%g5168051704%_
                                                 _%g5168151708%_)))))
                                      (_%g5168051704%_ _%g5168151708%_))))
                              (_%g5168051704%_ _%g5168151708%_))))
                      (_%g5168051704%_ _%g5168151708%_)))))
          (_%g5167951787%_ _%$stx51676%_))))
    (define |gerbil/core/more-sugar[:0:]#until|
      (lambda (_%$stx51792%_)
        (let* ((_%g5179651820%_
                (lambda (_%g5179751816%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5179751816%_)))
               (_%g5179551903%_
                (lambda (_%g5179751824%_)
                  (if (gx#stx-pair? _%g5179751824%_)
                      (let ((_%e5180051827%_ (gx#syntax-e _%g5179751824%_)))
                        (let ((_%hd5180151831%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5180051827%_)))
                              (_%tl5180251834%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5180051827%_))))
                          (if (gx#stx-pair? _%tl5180251834%_)
                              (let ((_%e5180351837%_
                                     (gx#syntax-e _%tl5180251834%_)))
                                (let ((_%hd5180451841%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5180351837%_)))
                                      (_%tl5180551844%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5180351837%_))))
                                  (if (gx#stx-pair/null? _%tl5180551844%_)
                                      (let ((_g54683_
                                             (gx#syntax-split-splice
                                              _%tl5180551844%_
                                              '0)))
                                        (begin
                                          (let ((_g54684_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g54683_)
                                                       (##values-length
                                                        _g54683_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g54684_ 2)))
                                                (error "Context expects 2 values"
                                                       _g54684_)))
                                          (let ((_%target5180651847%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g54683_ 0)))
                                                (_%tl5180851850%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g54683_ 1))))
                                            (if (gx#stx-null? _%tl5180851850%_)
                                                (letrec ((_%loop5180951853%_
                                                          (lambda (_%hd5180751857%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body5181351860%_)
                    (if (gx#stx-pair? _%hd5180751857%_)
                        (let ((_%e5181051862%_ (gx#syntax-e _%hd5180751857%_)))
                          (let ((_%lp-hd5181151866%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5181051862%_)))
                                (_%lp-tl5181251869%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5181051862%_))))
                            (_%loop5180951853%_
                             _%lp-tl5181251869%_
                             (cons _%lp-hd5181151866%_ _%body5181351860%_))))
                        (let ((_%body5181451872%_
                               (reverse _%body5181351860%_)))
                          ((lambda (_%g5179851875%_ _%g5179951877%_)
                             (cons (gx#datum->syntax '#f 'let)
                                   (cons (gx#datum->syntax '#f 'lp)
                                         (cons '()
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'unless)
                                                           (cons _%g5179951877%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%g5189451897%_ _%g5189551900%_)
                                  (cons _%g5189451897%_ _%g5189551900%_))
                                (cons (cons (gx#datum->syntax '#f 'lp) '())
                                      '())
                                _%g5179851875%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _%body5181451872%_
                           _%hd5180451841%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop5180951853%_
                                                   _%target5180651847%_
                                                   '()))
                                                (_%g5179651820%_
                                                 _%g5179751824%_)))))
                                      (_%g5179651820%_ _%g5179751824%_))))
                              (_%g5179651820%_ _%g5179751824%_))))
                      (_%g5179651820%_ _%g5179751824%_)))))
          (_%g5179551903%_ _%$stx51792%_))))
    (define |gerbil/core/more-sugar[:0:]#catch|
      (lambda (_%$stx51908%_)
        (let ((_%g5191151918%_
               (lambda (_%g5191251914%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5191251914%_))))
          (_%g5191151918%_ _%$stx51908%_))))
    (define |gerbil/core/more-sugar[:0:]#finally|
      (lambda (_%$stx51922%_)
        (let ((_%g5192551932%_
               (lambda (_%g5192651928%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%g5192651928%_))))
          (_%g5192551932%_ _%$stx51922%_))))
    (define |gerbil/core/more-sugar[:0:]#try|
      (lambda (_%stx51936%_)
        (letrec ((_%generate-thunk51939%_
                  (lambda (_%body53258%_)
                    (if (null? _%body53258%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; missing body"
                         _%stx51936%_)
                        (let* ((_%g5326153278%_
                                (lambda (_%g5326253274%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g5326253274%_)))
                               (_%g5326053337%_
                                (lambda (_%g5326253282%_)
                                  (if (gx#stx-pair/null? _%g5326253282%_)
                                      (let ((_g54685_
                                             (gx#syntax-split-splice
                                              _%g5326253282%_
                                              '0)))
                                        (begin
                                          (let ((_g54686_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g54685_)
                                                       (##values-length
                                                        _g54685_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g54686_ 2)))
                                                (error "Context expects 2 values"
                                                       _g54686_)))
                                          (let ((_%target5326453285%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g54685_ 0)))
                                                (_%tl5326653288%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g54685_ 1))))
                                            (if (gx#stx-null? _%tl5326653288%_)
                                                (letrec ((_%loop5326753291%_
                                                          (lambda (_%hd5326553295%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%e5327153298%_)
                    (if (gx#stx-pair? _%hd5326553295%_)
                        (let ((_%e5326853300%_ (gx#syntax-e _%hd5326553295%_)))
                          (let ((_%lp-hd5326953304%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5326853300%_)))
                                (_%lp-tl5327053307%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5326853300%_))))
                            (_%loop5326753291%_
                             _%lp-tl5327053307%_
                             (cons _%lp-hd5326953304%_ _%e5327153298%_))))
                        (let ((_%e5327253310%_ (reverse _%e5327153298%_)))
                          ((lambda (_%g5326353313%_)
                             (cons (gx#datum->syntax '#f 'lambda)
                                   (cons '()
                                         (foldr (lambda (_%g5332853331%_
                                                         _%g5332953334%_)
                                                  (cons _%g5332853331%_
                                                        _%g5332953334%_))
                                                '()
                                                _%g5326353313%_))))
                           _%e5327253310%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop5326753291%_
                                                   _%target5326453285%_
                                                   '()))
                                                (_%g5326153278%_
                                                 _%g5326253282%_)))))
                                      (_%g5326153278%_ _%g5326253282%_)))))
                          (_%g5326053337%_ (reverse _%body53258%_))))))
                 (_%generate-fini51941%_
                  (lambda (_%thunk53141%_ _%fini53143%_)
                    (let* ((_%g5314553169%_
                            (lambda (_%g5314653165%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5314653165%_)))
                           (_%g5314453254%_
                            (lambda (_%g5314653173%_)
                              (if (gx#stx-pair? _%g5314653173%_)
                                  (let ((_%e5314953176%_
                                         (gx#syntax-e _%g5314653173%_)))
                                    (let ((_%hd5315053180%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e5314953176%_)))
                                          (_%tl5315153183%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e5314953176%_))))
                                      (if (gx#stx-pair? _%tl5315153183%_)
                                          (let ((_%e5315253186%_
                                                 (gx#syntax-e
                                                  _%tl5315153183%_)))
                                            (let ((_%hd5315353190%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5315253186%_)))
                                                  (_%tl5315453193%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5315253186%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd5315353190%_)
                                                  (let ((_g54687_
                                                         (gx#syntax-split-splice
                                                          _%hd5315353190%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g54688_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g54687_)
                           (##values-length _g54687_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g54688_ 2)))
                    (error "Context expects 2 values" _g54688_)))
              (let ((_%target5315553196%_
                     (let () (declare (not safe)) (##values-ref _g54687_ 0)))
                    (_%tl5315753199%_
                     (let () (declare (not safe)) (##values-ref _g54687_ 1))))
                (if (gx#stx-null? _%tl5315753199%_)
                    (letrec ((_%loop5315853202%_
                              (lambda (_%hd5315653206%_ _%e5316253209%_)
                                (if (gx#stx-pair? _%hd5315653206%_)
                                    (let ((_%e5315953211%_
                                           (gx#syntax-e _%hd5315653206%_)))
                                      (let ((_%lp-hd5316053215%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e5315953211%_)))
                                            (_%lp-tl5316153218%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e5315953211%_))))
                                        (_%loop5315853202%_
                                         _%lp-tl5316153218%_
                                         (cons _%lp-hd5316053215%_
                                               _%e5316253209%_))))
                                    (let ((_%e5316353221%_
                                           (reverse _%e5316253209%_)))
                                      (if (gx#stx-null? _%tl5315453193%_)
                                          ((lambda (_%g5314753224%_
                                                    _%g5314853226%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'with-unwind-protect)
                                                   (cons _%g5314853226%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'lambda)
                             (cons '()
                                   (foldr (lambda (_%g5324553248%_
                                                   _%g5324653251%_)
                                            (cons _%g5324553248%_
                                                  _%g5324653251%_))
                                          '()
                                          _%g5314753224%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%e5316353221%_
                                           _%hd5315053180%_)
                                          (_%g5314553169%_
                                           _%g5314653173%_)))))))
                      (_%loop5315853202%_ _%target5315553196%_ '()))
                    (_%g5314553169%_ _%g5314653173%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5314553169%_
                                                   _%g5314653173%_))))
                                          (_%g5314553169%_ _%g5314653173%_))))
                                  (_%g5314553169%_ _%g5314653173%_)))))
                      (_%g5314453254%_ (list _%thunk53141%_ _%fini53143%_)))))
                 (_%generate-catch51942%_
                  (lambda (_%handlers52556%_ _%thunk52558%_)
                    (let* ((_%g5256052568%_
                            (lambda (_%g5256152564%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5256152564%_)))
                           (_%g5255953137%_
                            (lambda (_%g5256152572%_)
                              ((lambda (_%g5256252575%_)
                                 (let _%lp52587%_ ((_%rest52590%_
                                                    _%handlers52556%_)
                                                   (_%clauses52592%_ '()))
                                   (let* ((_%rest5259352601%_ _%rest52590%_)
                                          (_%else5259552732%_
                                           (lambda ()
                                             (let* ((_%g5261352637%_
                                                     (lambda (_%g5261452633%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g5261452633%_)))
                                                    (_%g5261252728%_
                                                     (lambda (_%g5261452641%_)
                                                       (if (gx#stx-pair?
                                                            _%g5261452641%_)
                                                           (let ((_%e5261752644%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%g5261452641%_)))
                     (let ((_%hd5261852648%_
                            (let ()
                              (declare (not safe))
                              (##car _%e5261752644%_)))
                           (_%tl5261952651%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e5261752644%_))))
                       (if (gx#stx-pair/null? _%hd5261852648%_)
                           (let ((_g54689_
                                  (gx#syntax-split-splice
                                   _%hd5261852648%_
                                   '0)))
                             (begin
                               (let ((_g54690_
                                      (let ()
                                        (declare (not safe))
                                        (if (##values? _g54689_)
                                            (##values-length _g54689_)
                                            1))))
                                 (if (not (let ()
                                            (declare (not safe))
                                            (##fx= _g54690_ 2)))
                                     (error "Context expects 2 values"
                                            _g54690_)))
                               (let ((_%target5262052654%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g54689_ 0)))
                                     (_%tl5262252657%_
                                      (let ()
                                        (declare (not safe))
                                        (##values-ref _g54689_ 1))))
                                 (if (gx#stx-null? _%tl5262252657%_)
                                     (letrec ((_%loop5262352660%_
                                               (lambda (_%hd5262152664%_
                                                        _%clause5262752667%_)
                                                 (if (gx#stx-pair?
                                                      _%hd5262152664%_)
                                                     (let ((_%e5262452669%_
                                                            (gx#syntax-e
                                                             _%hd5262152664%_)))
                                                       (let ((_%lp-hd5262552673%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e5262452669%_)))
                     (_%lp-tl5262652676%_
                      (let () (declare (not safe)) (##cdr _%e5262452669%_))))
                 (_%loop5262352660%_
                  _%lp-tl5262652676%_
                  (cons _%lp-hd5262552673%_ _%clause5262752667%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%clause5262852679%_
                                                            (reverse _%clause5262752667%_)))
                                                       (if (gx#stx-pair?
                                                            _%tl5261952651%_)
                                                           (let ((_%e5262952682%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl5261952651%_)))
                     (let ((_%hd5263052686%_
                            (let ()
                              (declare (not safe))
                              (##car _%e5262952682%_)))
                           (_%tl5263152689%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e5262952682%_))))
                       (if (gx#stx-null? _%tl5263152689%_)
                           ((lambda (_%g5261552692%_ _%g5261652694%_)
                              (cons (gx#datum->syntax '#f 'with-catch)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%g5256252575%_
                                                            '())
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'cond)
                          (foldr (lambda (_%g5271952722%_ _%g5272052725%_)
                                   (cons _%g5271952722%_ _%g5272052725%_))
                                 (cons (cons (gx#datum->syntax '#f 'else)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'raise)
                                                         (cons _%g5256252575%_
                                                               '()))
                                                   '()))
                                       '())
                                 _%g5261652694%_))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons _%g5261552692%_ '()))))
                            _%hd5263052686%_
                            _%clause5262852679%_)
                           (_%g5261352637%_ _%g5261452641%_))))
                   (_%g5261352637%_ _%g5261452641%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (_%loop5262352660%_
                                        _%target5262052654%_
                                        '()))
                                     (_%g5261352637%_ _%g5261452641%_)))))
                           (_%g5261352637%_ _%g5261452641%_))))
                   (_%g5261352637%_ _%g5261452641%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g5261252728%_
                                                (list _%clauses52592%_
                                                      _%thunk52558%_)))))
                                          (_%K5259753121%_
                                           (lambda (_%rest52736%_ _%hd52738%_)
                                             (let* ((_%__stx5440954410%_
                                                     _%hd52738%_)
                                                    (_%g5274352813%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx5440954410%_))))
                                               (let ((_%__kont5441254413%_
                                                      (lambda (_%g5274553100%_
                                                               _%g5274653102%_)
                                                        (_%lp52587%_
                                                         _%rest52736%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%g5274653102%_ '()))
                                   (cons _%g5256252575%_ '()))
                             (cons (gx#datum->syntax '#f '=>)
                                   (cons _%g5274553100%_ '())))
                       _%clauses52592%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont5441454415%_
                                                      (lambda (_%g5275653032%_
                                                               _%g5275753034%_
                                                               _%g5275853035%_)
                                                        (_%lp52587%_
                                                         _%rest52736%_
                                                         (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '?)
                                         (cons _%g5275853035%_ '()))
                                   (cons _%g5256252575%_ '()))
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%g5275753034%_
                                                           (cons _%g5256252575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g5305453057%_
                                                               _%g5305553060%_)
                                                        (cons _%g5305453057%_
                                                              _%g5305553060%_))
                                                      '()
                                                      _%g5275653032%_)))
                                   '()))
                       _%clauses52592%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont5441854419%_
                                                      (lambda (_%g5277752940%_
                                                               _%g5277852942%_)
                                                        (_%lp52587%_
                                                         _%rest52736%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'let)
                                         (cons (cons (cons _%g5277852942%_
                                                           (cons _%g5256252575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (foldr (lambda (_%g5295852961%_
                                                               _%g5295952964%_)
                                                        (cons _%g5295852961%_
                                                              _%g5295952964%_))
                                                      '()
                                                      _%g5277752940%_)))
                                   '()))
                       _%clauses52592%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont5442254423%_
                                                      (lambda (_%g5279452858%_
                                                               _%g5279552860%_)
                                                        (_%lp52587%_
                                                         _%rest52736%_
                                                         (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'begin)
                                         (foldr (lambda (_%g5287652879%_
                                                         _%g5287752882%_)
                                                  (cons _%g5287652879%_
                                                        _%g5287752882%_))
                                                '()
                                                _%g5279452858%_))
                                   '()))
                       _%clauses52592%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__match5451454515%_
                                                         (lambda (_%e5279652820%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%hd5279752824%_
                          _%tl5279852827%_
                          _%__splice5442454425%_
                          _%target5279952830%_
                          _%tl5280152833%_)
                   (letrec ((_%loop5280252836%_
                             (lambda (_%hd5280052840%_ _%body5280652843%_)
                               (if (gx#stx-pair? _%hd5280052840%_)
                                   (let ((_%e5280352845%_
                                          (gx#syntax-e _%hd5280052840%_)))
                                     (let ((_%lp-tl5280552852%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e5280352845%_)))
                                           (_%lp-hd5280452849%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e5280352845%_))))
                                       (_%loop5280252836%_
                                        _%lp-tl5280552852%_
                                        (cons _%lp-hd5280452849%_
                                              _%body5280652843%_))))
                                   (let ((_%body5280752855%_
                                          (reverse _%body5280652843%_)))
                                     (let ((_%g5279452858%_ _%body5280752855%_)
                                           (_%g5279552860%_ _%hd5279752824%_))
                                       (if (gx#underscore? _%g5279552860%_)
                                           (_%__kont5442254423%_
                                            _%g5279452858%_
                                            _%g5279552860%_)
                                           (let ()
                                             (declare (not safe))
                                             (_%g5274352813%_)))))))))
                     (_%loop5280252836%_ _%target5279952830%_ '()))))
                (_%__match5450054501%_
                 (lambda (_%e5277952892%_
                          _%hd5278052896%_
                          _%tl5278152899%_
                          _%e5278252902%_
                          _%hd5278352906%_
                          _%tl5278452909%_
                          _%__splice5442054421%_
                          _%target5278552912%_
                          _%tl5278752915%_)
                   (letrec ((_%loop5278852918%_
                             (lambda (_%hd5278652922%_ _%body5279252925%_)
                               (if (gx#stx-pair? _%hd5278652922%_)
                                   (let ((_%e5278952927%_
                                          (gx#syntax-e _%hd5278652922%_)))
                                     (let ((_%lp-tl5279152934%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e5278952927%_)))
                                           (_%lp-hd5279052931%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e5278952927%_))))
                                       (_%loop5278852918%_
                                        _%lp-tl5279152934%_
                                        (cons _%lp-hd5279052931%_
                                              _%body5279252925%_))))
                                   (let ((_%body5279352937%_
                                          (reverse _%body5279252925%_)))
                                     (let ((_%g5277752940%_ _%body5279352937%_)
                                           (_%g5277852942%_ _%hd5278352906%_))
                                       (if (gx#identifier? _%g5277852942%_)
                                           (_%__kont5441854419%_
                                            _%g5277752940%_
                                            _%g5277852942%_)
                                           (_%__match5451454515%_
                                            _%e5277952892%_
                                            _%hd5278052896%_
                                            _%tl5278152899%_
                                            _%__splice5442054421%_
                                            _%target5278552912%_
                                            _%tl5278752915%_))))))))
                     (_%loop5278852918%_ _%target5278552912%_ '()))))
                (_%__match5447854479%_
                 (lambda (_%e5275952974%_
                          _%hd5276052978%_
                          _%tl5276152981%_
                          _%e5276252984%_
                          _%hd5276352988%_
                          _%tl5276452991%_
                          _%e5276552994%_
                          _%hd5276652998%_
                          _%tl5276753001%_
                          _%__splice5441654417%_
                          _%target5276853004%_
                          _%tl5277053007%_)
                   (letrec ((_%loop5277153010%_
                             (lambda (_%hd5276953014%_ _%body5277553017%_)
                               (if (gx#stx-pair? _%hd5276953014%_)
                                   (let ((_%e5277253019%_
                                          (gx#syntax-e _%hd5276953014%_)))
                                     (let ((_%lp-tl5277453026%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e5277253019%_)))
                                           (_%lp-hd5277353023%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e5277253019%_))))
                                       (_%loop5277153010%_
                                        _%lp-tl5277453026%_
                                        (cons _%lp-hd5277353023%_
                                              _%body5277553017%_))))
                                   (let ((_%body5277653029%_
                                          (reverse _%body5277553017%_)))
                                     (let ((_%g5275653032%_ _%body5277653029%_)
                                           (_%g5275753034%_ _%hd5276652998%_)
                                           (_%g5275853035%_ _%hd5276352988%_))
                                       (if (gx#identifier? _%g5275753034%_)
                                           (_%__kont5441454415%_
                                            _%g5275653032%_
                                            _%g5275753034%_
                                            _%g5275853035%_)
                                           (_%__match5451454515%_
                                            _%e5275952974%_
                                            _%hd5276052978%_
                                            _%tl5276152981%_
                                            _%__splice5441654417%_
                                            _%target5276853004%_
                                            _%tl5277053007%_))))))))
                     (_%loop5277153010%_ _%target5276853004%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair?
                                                        _%__stx5440954410%_)
                                                       (let ((_%e5274753070%_
                                                              (gx#syntax-e
                                                               _%__stx5440954410%_)))
                                                         (let ((_%tl5274953077%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%e5274753070%_)))
                       (_%hd5274853074%_
                        (let () (declare (not safe)) (##car _%e5274753070%_))))
                   (if (gx#stx-pair? _%tl5274953077%_)
                       (let ((_%e5275053080%_ (gx#syntax-e _%tl5274953077%_)))
                         (let ((_%tl5275253087%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e5275053080%_)))
                               (_%hd5275153084%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e5275053080%_))))
                           (if (gx#identifier? _%hd5275153084%_)
                               (if (gx#free-identifier=?
                                    |gerbil/core/more-sugar[1]#_g54691_|
                                    _%hd5275153084%_)
                                   (if (gx#stx-pair? _%tl5275253087%_)
                                       (let ((_%e5275353090%_
                                              (gx#syntax-e _%tl5275253087%_)))
                                         (let ((_%tl5275553097%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e5275353090%_)))
                                               (_%hd5275453094%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e5275353090%_))))
                                           (if (gx#stx-null? _%tl5275553097%_)
                                               (_%__kont5441254413%_
                                                _%hd5275453094%_
                                                _%hd5274853074%_)
                                               (if (gx#stx-pair?
                                                    _%hd5274853074%_)
                                                   (let ((_%e5276252984%_
                                                          (gx#syntax-e
                                                           _%hd5274853074%_)))
                                                     (let ((_%tl5276452991%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e5276252984%_)))
                                                           (_%hd5276352988%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e5276252984%_))))
                                                       (if (gx#stx-pair?
                                                            _%tl5276452991%_)
                                                           (let ((_%e5276552994%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl5276452991%_)))
                     (let ((_%tl5276753001%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e5276552994%_)))
                           (_%hd5276652998%_
                            (let ()
                              (declare (not safe))
                              (##car _%e5276552994%_))))
                       (if (gx#stx-null? _%tl5276753001%_)
                           (if (gx#stx-pair/null? _%tl5274953077%_)
                               (let ((_%__splice5441654417%_
                                      (gx#syntax-split-splice->vector
                                       _%tl5274953077%_
                                       '0)))
                                 (let ((_%tl5277053007%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice5441654417%_
                                           '1)))
                                       (_%target5276853004%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice5441654417%_
                                           '0))))
                                   (if (gx#stx-null? _%tl5277053007%_)
                                       (_%__match5447854479%_
                                        _%e5274753070%_
                                        _%hd5274853074%_
                                        _%tl5274953077%_
                                        _%e5276252984%_
                                        _%hd5276352988%_
                                        _%tl5276452991%_
                                        _%e5276552994%_
                                        _%hd5276652998%_
                                        _%tl5276753001%_
                                        _%__splice5441654417%_
                                        _%target5276853004%_
                                        _%tl5277053007%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g5274352813%_)))))
                               (let () (declare (not safe)) (_%g5274352813%_)))
                           (if (gx#stx-pair/null? _%tl5274953077%_)
                               (let ((_%__splice5442454425%_
                                      (gx#syntax-split-splice->vector
                                       _%tl5274953077%_
                                       '0)))
                                 (let ((_%tl5280152833%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice5442454425%_
                                           '1)))
                                       (_%target5279952830%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice5442454425%_
                                           '0))))
                                   (if (gx#stx-null? _%tl5280152833%_)
                                       (_%__match5451454515%_
                                        _%e5274753070%_
                                        _%hd5274853074%_
                                        _%tl5274953077%_
                                        _%__splice5442454425%_
                                        _%target5279952830%_
                                        _%tl5280152833%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g5274352813%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g5274352813%_))))))
                   (if (gx#stx-null? _%tl5276452991%_)
                       (if (gx#stx-pair/null? _%tl5274953077%_)
                           (let ((_%__splice5442054421%_
                                  (gx#syntax-split-splice->vector
                                   _%tl5274953077%_
                                   '0)))
                             (let ((_%tl5278752915%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice5442054421%_
                                       '1)))
                                   (_%target5278552912%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice5442054421%_
                                       '0))))
                               (if (gx#stx-null? _%tl5278752915%_)
                                   (_%__match5450054501%_
                                    _%e5274753070%_
                                    _%hd5274853074%_
                                    _%tl5274953077%_
                                    _%e5276252984%_
                                    _%hd5276352988%_
                                    _%tl5276452991%_
                                    _%__splice5442054421%_
                                    _%target5278552912%_
                                    _%tl5278752915%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g5274352813%_)))))
                           (let () (declare (not safe)) (_%g5274352813%_)))
                       (if (gx#stx-pair/null? _%tl5274953077%_)
                           (let ((_%__splice5442454425%_
                                  (gx#syntax-split-splice->vector
                                   _%tl5274953077%_
                                   '0)))
                             (let ((_%tl5280152833%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice5442454425%_
                                       '1)))
                                   (_%target5279952830%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       _%__splice5442454425%_
                                       '0))))
                               (if (gx#stx-null? _%tl5280152833%_)
                                   (_%__match5451454515%_
                                    _%e5274753070%_
                                    _%hd5274853074%_
                                    _%tl5274953077%_
                                    _%__splice5442454425%_
                                    _%target5279952830%_
                                    _%tl5280152833%_)
                                   (let ()
                                     (declare (not safe))
                                     (_%g5274352813%_)))))
                           (let () (declare (not safe)) (_%g5274352813%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl5274953077%_)
                                                       (let ((_%__splice5442454425%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl5274953077%_
                                                               '0)))
                                                         (let ((_%tl5280152833%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice5442454425%_ '1)))
                       (_%target5279952830%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice5442454425%_ '0))))
                   (if (gx#stx-null? _%tl5280152833%_)
                       (_%__match5451454515%_
                        _%e5274753070%_
                        _%hd5274853074%_
                        _%tl5274953077%_
                        _%__splice5442454425%_
                        _%target5279952830%_
                        _%tl5280152833%_)
                       (let () (declare (not safe)) (_%g5274352813%_)))))
               (let () (declare (not safe)) (_%g5274352813%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair? _%hd5274853074%_)
                                           (let ((_%e5276252984%_
                                                  (gx#syntax-e
                                                   _%hd5274853074%_)))
                                             (let ((_%tl5276452991%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e5276252984%_)))
                                                   (_%hd5276352988%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e5276252984%_))))
                                               (if (gx#stx-pair?
                                                    _%tl5276452991%_)
                                                   (let ((_%e5276552994%_
                                                          (gx#syntax-e
                                                           _%tl5276452991%_)))
                                                     (let ((_%tl5276753001%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e5276552994%_)))
                                                           (_%hd5276652998%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e5276552994%_))))
                                                       (if (gx#stx-null?
                                                            _%tl5276753001%_)
                                                           (if (gx#stx-pair/null?
                                                                _%tl5274953077%_)
                                                               (let ((_%__splice5441654417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-split-splice->vector
                               _%tl5274953077%_
                               '0)))
                         (let ((_%tl5277053007%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice5441654417%_ '1)))
                               (_%target5276853004%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice5441654417%_ '0))))
                           (if (gx#stx-null? _%tl5277053007%_)
                               (_%__match5447854479%_
                                _%e5274753070%_
                                _%hd5274853074%_
                                _%tl5274953077%_
                                _%e5276252984%_
                                _%hd5276352988%_
                                _%tl5276452991%_
                                _%e5276552994%_
                                _%hd5276652998%_
                                _%tl5276753001%_
                                _%__splice5441654417%_
                                _%target5276853004%_
                                _%tl5277053007%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g5274352813%_)))))
                       (let () (declare (not safe)) (_%g5274352813%_)))
                   (if (gx#stx-pair/null? _%tl5274953077%_)
                       (let ((_%__splice5442454425%_
                              (gx#syntax-split-splice->vector
                               _%tl5274953077%_
                               '0)))
                         (let ((_%tl5280152833%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice5442454425%_ '1)))
                               (_%target5279952830%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice5442454425%_ '0))))
                           (if (gx#stx-null? _%tl5280152833%_)
                               (_%__match5451454515%_
                                _%e5274753070%_
                                _%hd5274853074%_
                                _%tl5274953077%_
                                _%__splice5442454425%_
                                _%target5279952830%_
                                _%tl5280152833%_)
                               (let ()
                                 (declare (not safe))
                                 (_%g5274352813%_)))))
                       (let () (declare (not safe)) (_%g5274352813%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-null?
                                                        _%tl5276452991%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl5274953077%_)
                                                           (let ((_%__splice5442054421%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl5274953077%_
                           '0)))
                     (let ((_%tl5278752915%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice5442054421%_ '1)))
                           (_%target5278552912%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice5442054421%_ '0))))
                       (if (gx#stx-null? _%tl5278752915%_)
                           (_%__match5450054501%_
                            _%e5274753070%_
                            _%hd5274853074%_
                            _%tl5274953077%_
                            _%e5276252984%_
                            _%hd5276352988%_
                            _%tl5276452991%_
                            _%__splice5442054421%_
                            _%target5278552912%_
                            _%tl5278752915%_)
                           (let () (declare (not safe)) (_%g5274352813%_)))))
                   (let () (declare (not safe)) (_%g5274352813%_)))
               (if (gx#stx-pair/null? _%tl5274953077%_)
                   (let ((_%__splice5442454425%_
                          (gx#syntax-split-splice->vector
                           _%tl5274953077%_
                           '0)))
                     (let ((_%tl5280152833%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice5442454425%_ '1)))
                           (_%target5279952830%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice5442454425%_ '0))))
                       (if (gx#stx-null? _%tl5280152833%_)
                           (_%__match5451454515%_
                            _%e5274753070%_
                            _%hd5274853074%_
                            _%tl5274953077%_
                            _%__splice5442454425%_
                            _%target5279952830%_
                            _%tl5280152833%_)
                           (let () (declare (not safe)) (_%g5274352813%_)))))
                   (let () (declare (not safe)) (_%g5274352813%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair/null?
                                                _%tl5274953077%_)
                                               (let ((_%__splice5442454425%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl5274953077%_
                                                       '0)))
                                                 (let ((_%tl5280152833%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice5442454425%_
                                                           '1)))
                                                       (_%target5279952830%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice5442454425%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl5280152833%_)
                                                       (_%__match5451454515%_
                                                        _%e5274753070%_
                                                        _%hd5274853074%_
                                                        _%tl5274953077%_
                                                        _%__splice5442454425%_
                                                        _%target5279952830%_
                                                        _%tl5280152833%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g5274352813%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g5274352813%_)))))
                                   (if (gx#stx-pair? _%hd5274853074%_)
                                       (let ((_%e5276252984%_
                                              (gx#syntax-e _%hd5274853074%_)))
                                         (let ((_%tl5276452991%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e5276252984%_)))
                                               (_%hd5276352988%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e5276252984%_))))
                                           (if (gx#stx-pair? _%tl5276452991%_)
                                               (let ((_%e5276552994%_
                                                      (gx#syntax-e
                                                       _%tl5276452991%_)))
                                                 (let ((_%tl5276753001%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e5276552994%_)))
                                                       (_%hd5276652998%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e5276552994%_))))
                                                   (if (gx#stx-null?
                                                        _%tl5276753001%_)
                                                       (if (gx#stx-pair/null?
                                                            _%tl5274953077%_)
                                                           (let ((_%__splice5441654417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%tl5274953077%_
                           '0)))
                     (let ((_%tl5277053007%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice5441654417%_ '1)))
                           (_%target5276853004%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice5441654417%_ '0))))
                       (if (gx#stx-null? _%tl5277053007%_)
                           (_%__match5447854479%_
                            _%e5274753070%_
                            _%hd5274853074%_
                            _%tl5274953077%_
                            _%e5276252984%_
                            _%hd5276352988%_
                            _%tl5276452991%_
                            _%e5276552994%_
                            _%hd5276652998%_
                            _%tl5276753001%_
                            _%__splice5441654417%_
                            _%target5276853004%_
                            _%tl5277053007%_)
                           (let () (declare (not safe)) (_%g5274352813%_)))))
                   (let () (declare (not safe)) (_%g5274352813%_)))
               (if (gx#stx-pair/null? _%tl5274953077%_)
                   (let ((_%__splice5442454425%_
                          (gx#syntax-split-splice->vector
                           _%tl5274953077%_
                           '0)))
                     (let ((_%tl5280152833%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice5442454425%_ '1)))
                           (_%target5279952830%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice5442454425%_ '0))))
                       (if (gx#stx-null? _%tl5280152833%_)
                           (_%__match5451454515%_
                            _%e5274753070%_
                            _%hd5274853074%_
                            _%tl5274953077%_
                            _%__splice5442454425%_
                            _%target5279952830%_
                            _%tl5280152833%_)
                           (let () (declare (not safe)) (_%g5274352813%_)))))
                   (let () (declare (not safe)) (_%g5274352813%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (gx#stx-null?
                                                    _%tl5276452991%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl5274953077%_)
                                                       (let ((_%__splice5442054421%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl5274953077%_
                                                               '0)))
                                                         (let ((_%tl5278752915%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice5442054421%_ '1)))
                       (_%target5278552912%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice5442054421%_ '0))))
                   (if (gx#stx-null? _%tl5278752915%_)
                       (_%__match5450054501%_
                        _%e5274753070%_
                        _%hd5274853074%_
                        _%tl5274953077%_
                        _%e5276252984%_
                        _%hd5276352988%_
                        _%tl5276452991%_
                        _%__splice5442054421%_
                        _%target5278552912%_
                        _%tl5278752915%_)
                       (let () (declare (not safe)) (_%g5274352813%_)))))
               (let () (declare (not safe)) (_%g5274352813%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl5274953077%_)
                                                       (let ((_%__splice5442454425%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl5274953077%_
                                                               '0)))
                                                         (let ((_%tl5280152833%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice5442454425%_ '1)))
                       (_%target5279952830%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice5442454425%_ '0))))
                   (if (gx#stx-null? _%tl5280152833%_)
                       (_%__match5451454515%_
                        _%e5274753070%_
                        _%hd5274853074%_
                        _%tl5274953077%_
                        _%__splice5442454425%_
                        _%target5279952830%_
                        _%tl5280152833%_)
                       (let () (declare (not safe)) (_%g5274352813%_)))))
               (let () (declare (not safe)) (_%g5274352813%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (if (gx#stx-pair/null? _%tl5274953077%_)
                                           (let ((_%__splice5442454425%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl5274953077%_
                                                   '0)))
                                             (let ((_%tl5280152833%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice5442454425%_
                                                       '1)))
                                                   (_%target5279952830%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice5442454425%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl5280152833%_)
                                                   (_%__match5451454515%_
                                                    _%e5274753070%_
                                                    _%hd5274853074%_
                                                    _%tl5274953077%_
                                                    _%__splice5442454425%_
                                                    _%target5279952830%_
                                                    _%tl5280152833%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g5274352813%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g5274352813%_)))))
                               (if (gx#stx-pair? _%hd5274853074%_)
                                   (let ((_%e5276252984%_
                                          (gx#syntax-e _%hd5274853074%_)))
                                     (let ((_%tl5276452991%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e5276252984%_)))
                                           (_%hd5276352988%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e5276252984%_))))
                                       (if (gx#stx-pair? _%tl5276452991%_)
                                           (let ((_%e5276552994%_
                                                  (gx#syntax-e
                                                   _%tl5276452991%_)))
                                             (let ((_%tl5276753001%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e5276552994%_)))
                                                   (_%hd5276652998%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e5276552994%_))))
                                               (if (gx#stx-null?
                                                    _%tl5276753001%_)
                                                   (if (gx#stx-pair/null?
                                                        _%tl5274953077%_)
                                                       (let ((_%__splice5441654417%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl5274953077%_
                                                               '0)))
                                                         (let ((_%tl5277053007%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice5441654417%_ '1)))
                       (_%target5276853004%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice5441654417%_ '0))))
                   (if (gx#stx-null? _%tl5277053007%_)
                       (_%__match5447854479%_
                        _%e5274753070%_
                        _%hd5274853074%_
                        _%tl5274953077%_
                        _%e5276252984%_
                        _%hd5276352988%_
                        _%tl5276452991%_
                        _%e5276552994%_
                        _%hd5276652998%_
                        _%tl5276753001%_
                        _%__splice5441654417%_
                        _%target5276853004%_
                        _%tl5277053007%_)
                       (let () (declare (not safe)) (_%g5274352813%_)))))
               (let () (declare (not safe)) (_%g5274352813%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (gx#stx-pair/null?
                                                        _%tl5274953077%_)
                                                       (let ((_%__splice5442454425%_
                                                              (gx#syntax-split-splice->vector
                                                               _%tl5274953077%_
                                                               '0)))
                                                         (let ((_%tl5280152833%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##vector-ref _%__splice5442454425%_ '1)))
                       (_%target5279952830%_
                        (let ()
                          (declare (not safe))
                          (##vector-ref _%__splice5442454425%_ '0))))
                   (if (gx#stx-null? _%tl5280152833%_)
                       (_%__match5451454515%_
                        _%e5274753070%_
                        _%hd5274853074%_
                        _%tl5274953077%_
                        _%__splice5442454425%_
                        _%target5279952830%_
                        _%tl5280152833%_)
                       (let () (declare (not safe)) (_%g5274352813%_)))))
               (let () (declare (not safe)) (_%g5274352813%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-null? _%tl5276452991%_)
                                               (if (gx#stx-pair/null?
                                                    _%tl5274953077%_)
                                                   (let ((_%__splice5442054421%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl5274953077%_
                                                           '0)))
                                                     (let ((_%tl5278752915%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice5442054421%_
                                                               '1)))
                                                           (_%target5278552912%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice5442054421%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl5278752915%_)
                                                           (_%__match5450054501%_
                                                            _%e5274753070%_
                                                            _%hd5274853074%_
                                                            _%tl5274953077%_
                                                            _%e5276252984%_
                                                            _%hd5276352988%_
                                                            _%tl5276452991%_
                                                            _%__splice5442054421%_
                                                            _%target5278552912%_
                                                            _%tl5278752915%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g5274352813%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g5274352813%_)))
                                               (if (gx#stx-pair/null?
                                                    _%tl5274953077%_)
                                                   (let ((_%__splice5442454425%_
                                                          (gx#syntax-split-splice->vector
                                                           _%tl5274953077%_
                                                           '0)))
                                                     (let ((_%tl5280152833%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice5442454425%_
                                                               '1)))
                                                           (_%target5279952830%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##vector-ref
                                                               _%__splice5442454425%_
                                                               '0))))
                                                       (if (gx#stx-null?
                                                            _%tl5280152833%_)
                                                           (_%__match5451454515%_
                                                            _%e5274753070%_
                                                            _%hd5274853074%_
                                                            _%tl5274953077%_
                                                            _%__splice5442454425%_
                                                            _%target5279952830%_
                                                            _%tl5280152833%_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (_%g5274352813%_)))))
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g5274352813%_)))))))
                                   (if (gx#stx-pair/null? _%tl5274953077%_)
                                       (let ((_%__splice5442454425%_
                                              (gx#syntax-split-splice->vector
                                               _%tl5274953077%_
                                               '0)))
                                         (let ((_%tl5280152833%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice5442454425%_
                                                   '1)))
                                               (_%target5279952830%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-ref
                                                   _%__splice5442454425%_
                                                   '0))))
                                           (if (gx#stx-null? _%tl5280152833%_)
                                               (_%__match5451454515%_
                                                _%e5274753070%_
                                                _%hd5274853074%_
                                                _%tl5274953077%_
                                                _%__splice5442454425%_
                                                _%target5279952830%_
                                                _%tl5280152833%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g5274352813%_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_%g5274352813%_)))))))
                       (if (gx#stx-pair? _%hd5274853074%_)
                           (let ((_%e5276252984%_
                                  (gx#syntax-e _%hd5274853074%_)))
                             (let ((_%tl5276452991%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e5276252984%_)))
                                   (_%hd5276352988%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e5276252984%_))))
                               (if (gx#stx-pair? _%tl5276452991%_)
                                   (let ((_%e5276552994%_
                                          (gx#syntax-e _%tl5276452991%_)))
                                     (let ((_%tl5276753001%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e5276552994%_)))
                                           (_%hd5276652998%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e5276552994%_))))
                                       (if (gx#stx-null? _%tl5276753001%_)
                                           (if (gx#stx-pair/null?
                                                _%tl5274953077%_)
                                               (let ((_%__splice5441654417%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl5274953077%_
                                                       '0)))
                                                 (let ((_%tl5277053007%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice5441654417%_
                                                           '1)))
                                                       (_%target5276853004%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice5441654417%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl5277053007%_)
                                                       (_%__match5447854479%_
                                                        _%e5274753070%_
                                                        _%hd5274853074%_
                                                        _%tl5274953077%_
                                                        _%e5276252984%_
                                                        _%hd5276352988%_
                                                        _%tl5276452991%_
                                                        _%e5276552994%_
                                                        _%hd5276652998%_
                                                        _%tl5276753001%_
                                                        _%__splice5441654417%_
                                                        _%target5276853004%_
                                                        _%tl5277053007%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g5274352813%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g5274352813%_)))
                                           (if (gx#stx-pair/null?
                                                _%tl5274953077%_)
                                               (let ((_%__splice5442454425%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl5274953077%_
                                                       '0)))
                                                 (let ((_%tl5280152833%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice5442454425%_
                                                           '1)))
                                                       (_%target5279952830%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice5442454425%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl5280152833%_)
                                                       (_%__match5451454515%_
                                                        _%e5274753070%_
                                                        _%hd5274853074%_
                                                        _%tl5274953077%_
                                                        _%__splice5442454425%_
                                                        _%target5279952830%_
                                                        _%tl5280152833%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g5274352813%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g5274352813%_))))))
                                   (if (gx#stx-null? _%tl5276452991%_)
                                       (if (gx#stx-pair/null? _%tl5274953077%_)
                                           (let ((_%__splice5442054421%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl5274953077%_
                                                   '0)))
                                             (let ((_%tl5278752915%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice5442054421%_
                                                       '1)))
                                                   (_%target5278552912%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice5442054421%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl5278752915%_)
                                                   (_%__match5450054501%_
                                                    _%e5274753070%_
                                                    _%hd5274853074%_
                                                    _%tl5274953077%_
                                                    _%e5276252984%_
                                                    _%hd5276352988%_
                                                    _%tl5276452991%_
                                                    _%__splice5442054421%_
                                                    _%target5278552912%_
                                                    _%tl5278752915%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g5274352813%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g5274352813%_)))
                                       (if (gx#stx-pair/null? _%tl5274953077%_)
                                           (let ((_%__splice5442454425%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl5274953077%_
                                                   '0)))
                                             (let ((_%tl5280152833%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice5442454425%_
                                                       '1)))
                                                   (_%target5279952830%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice5442454425%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl5280152833%_)
                                                   (_%__match5451454515%_
                                                    _%e5274753070%_
                                                    _%hd5274853074%_
                                                    _%tl5274953077%_
                                                    _%__splice5442454425%_
                                                    _%target5279952830%_
                                                    _%tl5280152833%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g5274352813%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g5274352813%_)))))))
                           (if (gx#stx-pair/null? _%tl5274953077%_)
                               (let ((_%__splice5442454425%_
                                      (gx#syntax-split-splice->vector
                                       _%tl5274953077%_
                                       '0)))
                                 (let ((_%tl5280152833%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice5442454425%_
                                           '1)))
                                       (_%target5279952830%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           _%__splice5442454425%_
                                           '0))))
                                   (if (gx#stx-null? _%tl5280152833%_)
                                       (_%__match5451454515%_
                                        _%e5274753070%_
                                        _%hd5274853074%_
                                        _%tl5274953077%_
                                        _%__splice5442454425%_
                                        _%target5279952830%_
                                        _%tl5280152833%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%g5274352813%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g5274352813%_)))))))
               (let () (declare (not safe)) (_%g5274352813%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (if (pair? _%rest5259352601%_)
                                         (let ((_%hd5259853125%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%rest5259352601%_)))
                                               (_%tl5259953128%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest5259352601%_))))
                                           (let* ((_%hd53131%_
                                                   _%hd5259853125%_)
                                                  (_%rest53134%_
                                                   _%tl5259953128%_))
                                             (_%K5259753121%_
                                              _%rest53134%_
                                              _%hd53131%_)))
                                         (_%else5259552732%_)))))
                               _%g5256152572%_))))
                      (_%g5255953137%_ (gx#genident))))))
          (let* ((_%g5194451964%_
                  (lambda (_%g5194551960%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g5194551960%_)))
                 (_%g5194352552%_
                  (lambda (_%g5194551968%_)
                    (if (gx#stx-pair? _%g5194551968%_)
                        (let ((_%e5194751971%_ (gx#syntax-e _%g5194551968%_)))
                          (let ((_%hd5194851975%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5194751971%_)))
                                (_%tl5194951978%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5194751971%_))))
                            (if (gx#stx-pair/null? _%tl5194951978%_)
                                (let ((_g54692_
                                       (gx#syntax-split-splice
                                        _%tl5194951978%_
                                        '0)))
                                  (begin
                                    (let ((_g54693_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g54692_)
                                                 (##values-length _g54692_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g54693_ 2)))
                                          (error "Context expects 2 values"
                                                 _g54693_)))
                                    (let ((_%target5195051981%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g54692_ 0)))
                                          (_%tl5195251984%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g54692_ 1))))
                                      (if (gx#stx-null? _%tl5195251984%_)
                                          (letrec ((_%loop5195351987%_
                                                    (lambda (_%hd5195151991%_
                                                             _%e5195751994%_)
                                                      (if (gx#stx-pair?
                                                           _%hd5195151991%_)
                                                          (let ((_%e5195451996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%hd5195151991%_)))
                    (let ((_%lp-hd5195552000%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5195451996%_)))
                          (_%lp-tl5195652003%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5195451996%_))))
                      (_%loop5195351987%_
                       _%lp-tl5195652003%_
                       (cons _%lp-hd5195552000%_ _%e5195751994%_))))
                  (let ((_%e5195852006%_ (reverse _%e5195751994%_)))
                    ((lambda (_%g5194652009%_)
                       (let _%lp52026%_ ((_%rest52029%_
                                          (foldr (lambda (_%g5254352546%_
                                                          _%g5254452549%_)
                                                   (cons _%g5254352546%_
                                                         _%g5254452549%_))
                                                 '()
                                                 _%g5194652009%_))
                                         (_%body52031%_ '()))
                         (let* ((_%__stx5463554636%_ _%rest52029%_)
                                (_%g5203452046%_
                                 (lambda ()
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%__stx5463554636%_))))
                           (let ((_%__kont5463854639%_
                                  (lambda (_%g5203652074%_ _%g5203752076%_)
                                    (let* ((_%__stx5458354584%_
                                            _%g5203752076%_)
                                           (_%g5209352126%_
                                            (lambda ()
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%__stx5458354584%_))))
                                      (let ((_%__kont5458654587%_
                                             (lambda (_%g5209552513%_)
                                               (if (gx#stx-null?
                                                    _%g5203652074%_)
                                                   (_%generate-fini51941%_
                                                    (_%generate-thunk51939%_
                                                     _%body52031%_)
                                                    (foldr (lambda (_%g5252752530%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g5252852533%_)
                     (cons _%g5252752530%_ _%g5252852533%_))
                   '()
                   _%g5209552513%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Misplaced finally clause"
                                                    _%stx51936%_))))
                                            (_%__kont5459054591%_
                                             (lambda (_%g5210852182%_)
                                               (let _%lp52199%_ ((_%rest52202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g5203652074%_)
                         (_%handlers52204%_
                          (cons (foldr (lambda (_%g5245952462%_
                                                _%g5246052465%_)
                                         (cons _%g5245952462%_
                                               _%g5246052465%_))
                                       '()
                                       _%g5210852182%_)
                                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let* ((_%__stx5451754518%_
                                                         _%rest52202%_)
                                                        (_%g5220852248%_
                                                         (lambda ()
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%__stx5451754518%_))))
                                                   (let ((_%__kont5452054521%_
                                                          (lambda (_%g5221052429%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g5221152431%_)
                    (_%lp52199%_
                     _%g5221052429%_
                     (cons (foldr (lambda (_%g5244752450%_ _%g5244852453%_)
                                    (cons _%g5244752450%_ _%g5244852453%_))
                                  '()
                                  _%g5221152431%_)
                           _%handlers52204%_))))
                 (_%__kont5452454525%_
                  (lambda (_%g5222752314%_)
                    (let* ((_%g5233552343%_
                            (lambda (_%g5233652339%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g5233652339%_)))
                           (_%g5233452370%_
                            (lambda (_%g5233652347%_)
                              ((lambda (_%g5233752350%_)
                                 (_%generate-fini51941%_
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '() (cons _%g5233752350%_ '())))
                                  (foldr (lambda (_%g5236152364%_
                                                  _%g5236252367%_)
                                           (cons _%g5236152364%_
                                                 _%g5236252367%_))
                                         '()
                                         _%g5222752314%_)))
                               _%g5233652347%_))))
                      (_%g5233452370%_
                       (_%generate-catch51942%_
                        _%handlers52204%_
                        (_%generate-thunk51939%_ _%body52031%_))))))
                 (_%__kont5452854529%_
                  (lambda ()
                    (_%generate-catch51942%_
                     _%handlers52204%_
                     (_%generate-thunk51939%_ _%body52031%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let* ((_%g5220752259%_
                                                             (lambda ()
                                                               (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%__stx5451754518%_)
                           (_%__kont5452854529%_)
                           (let () (declare (not safe)) (_%g5220852248%_)))))
                    (_%__match5457854579%_
                     (lambda (_%e5222852266%_
                              _%hd5222952270%_
                              _%tl5223052273%_
                              _%e5223152276%_
                              _%hd5223252280%_
                              _%tl5223352283%_
                              _%__splice5452654527%_
                              _%target5223452286%_
                              _%tl5223652289%_)
                       (letrec ((_%loop5223752292%_
                                 (lambda (_%hd5223552296%_ _%fini5224152299%_)
                                   (if (gx#stx-pair? _%hd5223552296%_)
                                       (let ((_%e5223852301%_
                                              (gx#syntax-e _%hd5223552296%_)))
                                         (let ((_%lp-tl5224052308%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e5223852301%_)))
                                               (_%lp-hd5223952305%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e5223852301%_))))
                                           (_%loop5223752292%_
                                            _%lp-tl5224052308%_
                                            (cons _%lp-hd5223952305%_
                                                  _%fini5224152299%_))))
                                       (let ((_%fini5224252311%_
                                              (reverse _%fini5224152299%_)))
                                         (if (gx#stx-null? _%tl5223052273%_)
                                             (_%__kont5452454525%_
                                              _%fini5224252311%_)
                                             (let ()
                                               (declare (not safe))
                                               (_%g5220852248%_))))))))
                         (_%loop5223752292%_ _%target5223452286%_ '()))))
                    (_%__match5455454555%_
                     (lambda (_%e5221252381%_
                              _%hd5221352385%_
                              _%tl5221452388%_
                              _%e5221552391%_
                              _%hd5221652395%_
                              _%tl5221752398%_
                              _%__splice5452254523%_
                              _%target5221852401%_
                              _%tl5222052404%_)
                       (letrec ((_%loop5222152407%_
                                 (lambda (_%hd5221952411%_
                                          _%handler5222552414%_)
                                   (if (gx#stx-pair? _%hd5221952411%_)
                                       (let ((_%e5222252416%_
                                              (gx#syntax-e _%hd5221952411%_)))
                                         (let ((_%lp-tl5222452423%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%e5222252416%_)))
                                               (_%lp-hd5222352420%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%e5222252416%_))))
                                           (_%loop5222152407%_
                                            _%lp-tl5222452423%_
                                            (cons _%lp-hd5222352420%_
                                                  _%handler5222552414%_))))
                                       (let ((_%handler5222652426%_
                                              (reverse _%handler5222552414%_)))
                                         (_%__kont5452054521%_
                                          _%tl5221452388%_
                                          _%handler5222652426%_))))))
                         (_%loop5222152407%_ _%target5221852401%_ '())))))
               (if (gx#stx-pair? _%__stx5451754518%_)
                   (let ((_%e5221252381%_ (gx#syntax-e _%__stx5451754518%_)))
                     (let ((_%tl5221452388%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e5221252381%_)))
                           (_%hd5221352385%_
                            (let ()
                              (declare (not safe))
                              (##car _%e5221252381%_))))
                       (if (gx#stx-pair? _%hd5221352385%_)
                           (let ((_%e5221552391%_
                                  (gx#syntax-e _%hd5221352385%_)))
                             (let ((_%tl5221752398%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e5221552391%_)))
                                   (_%hd5221652395%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e5221552391%_))))
                               (if (gx#identifier? _%hd5221652395%_)
                                   (if (gx#free-identifier=?
                                        |gerbil/core/more-sugar[1]#_g54694_|
                                        _%hd5221652395%_)
                                       (if (gx#stx-pair/null? _%tl5221752398%_)
                                           (let ((_%__splice5452254523%_
                                                  (gx#syntax-split-splice->vector
                                                   _%tl5221752398%_
                                                   '0)))
                                             (let ((_%tl5222052404%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice5452254523%_
                                                       '1)))
                                                   (_%target5221852401%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##vector-ref
                                                       _%__splice5452254523%_
                                                       '0))))
                                               (if (gx#stx-null?
                                                    _%tl5222052404%_)
                                                   (_%__match5455454555%_
                                                    _%e5221252381%_
                                                    _%hd5221352385%_
                                                    _%tl5221452388%_
                                                    _%e5221552391%_
                                                    _%hd5221652395%_
                                                    _%tl5221752398%_
                                                    _%__splice5452254523%_
                                                    _%target5221852401%_
                                                    _%tl5222052404%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_%g5220852248%_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_%g5220852248%_)))
                                       (if (gx#free-identifier=?
                                            |gerbil/core/more-sugar[1]#_g54695_|
                                            _%hd5221652395%_)
                                           (if (gx#stx-pair/null?
                                                _%tl5221752398%_)
                                               (let ((_%__splice5452654527%_
                                                      (gx#syntax-split-splice->vector
                                                       _%tl5221752398%_
                                                       '0)))
                                                 (let ((_%tl5223652289%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice5452654527%_
                                                           '1)))
                                                       (_%target5223452286%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##vector-ref
                                                           _%__splice5452654527%_
                                                           '0))))
                                                   (if (gx#stx-null?
                                                        _%tl5223652289%_)
                                                       (_%__match5457854579%_
                                                        _%e5221252381%_
                                                        _%hd5221352385%_
                                                        _%tl5221452388%_
                                                        _%e5221552391%_
                                                        _%hd5221652395%_
                                                        _%tl5221752398%_
                                                        _%__splice5452654527%_
                                                        _%target5223452286%_
                                                        _%tl5223652289%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (_%g5220852248%_)))))
                                               (let ()
                                                 (declare (not safe))
                                                 (_%g5220852248%_)))
                                           (let ()
                                             (declare (not safe))
                                             (_%g5220852248%_))))
                                   (let ()
                                     (declare (not safe))
                                     (_%g5220852248%_)))))
                           (let () (declare (not safe)) (_%g5220852248%_)))))
                   (let () (declare (not safe)) (_%g5220752259%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%__kont5459454595%_
                                             (lambda ()
                                               (_%lp52026%_
                                                _%g5203652074%_
                                                (cons _%g5203752076%_
                                                      _%body52031%_)))))
                                        (let* ((_%__match5463254633%_
                                                (lambda (_%e5210952144%_
                                                         _%hd5211052148%_
                                                         _%tl5211152151%_
                                                         _%__splice5459254593%_
                                                         _%target5211252154%_
                                                         _%tl5211452157%_)
                                                  (letrec ((_%loop5211552160%_
                                                            (lambda (_%hd5211352164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%handler5211952167%_)
                      (if (gx#stx-pair? _%hd5211352164%_)
                          (let ((_%e5211652169%_
                                 (gx#syntax-e _%hd5211352164%_)))
                            (let ((_%lp-tl5211852176%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5211652169%_)))
                                  (_%lp-hd5211752173%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5211652169%_))))
                              (_%loop5211552160%_
                               _%lp-tl5211852176%_
                               (cons _%lp-hd5211752173%_
                                     _%handler5211952167%_))))
                          (let ((_%handler5212052179%_
                                 (reverse _%handler5211952167%_)))
                            (_%__kont5459054591%_ _%handler5212052179%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop5211552160%_
                                                     _%target5211252154%_
                                                     '()))))
                                               (_%__match5461454615%_
                                                (lambda (_%e5209652475%_
                                                         _%hd5209752479%_
                                                         _%tl5209852482%_
                                                         _%__splice5458854589%_
                                                         _%target5209952485%_
                                                         _%tl5210152488%_)
                                                  (letrec ((_%loop5210252491%_
                                                            (lambda (_%hd5210052495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%fini5210652498%_)
                      (if (gx#stx-pair? _%hd5210052495%_)
                          (let ((_%e5210352500%_
                                 (gx#syntax-e _%hd5210052495%_)))
                            (let ((_%lp-tl5210552507%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e5210352500%_)))
                                  (_%lp-hd5210452504%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e5210352500%_))))
                              (_%loop5210252491%_
                               _%lp-tl5210552507%_
                               (cons _%lp-hd5210452504%_ _%fini5210652498%_))))
                          (let ((_%fini5210752510%_
                                 (reverse _%fini5210652498%_)))
                            (_%__kont5458654587%_ _%fini5210752510%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop5210252491%_
                                                     _%target5209952485%_
                                                     '())))))
                                          (if (gx#stx-pair?
                                               _%__stx5458354584%_)
                                              (let ((_%e5209652475%_
                                                     (gx#syntax-e
                                                      _%__stx5458354584%_)))
                                                (let ((_%tl5209852482%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e5209652475%_)))
                                                      (_%hd5209752479%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e5209652475%_))))
                                                  (if (gx#identifier?
                                                       _%hd5209752479%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/more-sugar[1]#_g54696_|
                                                           _%hd5209752479%_)
                                                          (if (gx#stx-pair/null?
                                                               _%tl5209852482%_)
                                                              (let ((_%__splice5458854589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-split-splice->vector
                              _%tl5209852482%_
                              '0)))
                        (let ((_%tl5210152488%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice5458854589%_ '1)))
                              (_%target5209952485%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice5458854589%_ '0))))
                          (if (gx#stx-null? _%tl5210152488%_)
                              (_%__match5461454615%_
                               _%e5209652475%_
                               _%hd5209752479%_
                               _%tl5209852482%_
                               _%__splice5458854589%_
                               _%target5209952485%_
                               _%tl5210152488%_)
                              (_%__kont5459454595%_))))
                      (_%__kont5459454595%_))
                  (if (gx#free-identifier=?
                       |gerbil/core/more-sugar[1]#_g54697_|
                       _%hd5209752479%_)
                      (if (gx#stx-pair/null? _%tl5209852482%_)
                          (let ((_%__splice5459254593%_
                                 (gx#syntax-split-splice->vector
                                  _%tl5209852482%_
                                  '0)))
                            (let ((_%tl5211452157%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice5459254593%_ '1)))
                                  (_%target5211252154%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice5459254593%_
                                      '0))))
                              (if (gx#stx-null? _%tl5211452157%_)
                                  (_%__match5463254633%_
                                   _%e5209652475%_
                                   _%hd5209752479%_
                                   _%tl5209852482%_
                                   _%__splice5459254593%_
                                   _%target5211252154%_
                                   _%tl5211452157%_)
                                  (_%__kont5459454595%_))))
                          (_%__kont5459454595%_))
                      (_%__kont5459454595%_)))
              (_%__kont5459454595%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont5459454595%_)))))))
                                 (_%__kont5464054641%_
                                  (lambda ()
                                    (cons 'begin (reverse _%body52031%_)))))
                             (let ((_%g5203352057%_
                                    (lambda ()
                                      (if (gx#stx-null? _%__stx5463554636%_)
                                          (_%__kont5464054641%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g5203452046%_))))))
                               (if (gx#stx-pair? _%__stx5463554636%_)
                                   (let ((_%e5203852064%_
                                          (gx#syntax-e _%__stx5463554636%_)))
                                     (let ((_%tl5204052071%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e5203852064%_)))
                                           (_%hd5203952068%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e5203852064%_))))
                                       (_%__kont5463854639%_
                                        _%tl5204052071%_
                                        _%hd5203952068%_)))
                                   (let ()
                                     (declare (not safe))
                                     (_%g5203352057%_))))))))
                     _%e5195852006%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%loop5195351987%_
                                             _%target5195051981%_
                                             '()))
                                          (_%g5194451964%_ _%g5194551968%_)))))
                                (_%g5194451964%_ _%g5194551968%_))))
                        (_%g5194451964%_ _%g5194551968%_)))))
            (_%g5194352552%_ _%stx51936%_)))))
    (define |gerbil/core/more-sugar[:0:]#hash|
      (lambda (_%$stx53352%_)
        (let* ((_%g5335653385%_
                (lambda (_%g5335753381%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5335753381%_)))
               (_%g5335553481%_
                (lambda (_%g5335753389%_)
                  (if (gx#stx-pair? _%g5335753389%_)
                      (let ((_%e5336053392%_ (gx#syntax-e _%g5335753389%_)))
                        (let ((_%hd5336153396%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5336053392%_)))
                              (_%tl5336253399%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5336053392%_))))
                          (if (gx#stx-pair/null? _%tl5336253399%_)
                              (let ((_g54698_
                                     (gx#syntax-split-splice
                                      _%tl5336253399%_
                                      '0)))
                                (begin
                                  (let ((_g54699_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g54698_)
                                               (##values-length _g54698_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g54699_ 2)))
                                        (error "Context expects 2 values"
                                               _g54699_)))
                                  (let ((_%target5336353402%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g54698_ 0)))
                                        (_%tl5336553405%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g54698_ 1))))
                                    (if (gx#stx-null? _%tl5336553405%_)
                                        (letrec ((_%loop5336653408%_
                                                  (lambda (_%hd5336453412%_
                                                           _%val5337053415%_
                                                           _%key5337153416%_)
                                                    (if (gx#stx-pair?
                                                         _%hd5336453412%_)
                                                        (let ((_%e5336753418%_
                                                               (gx#syntax-e
                                                                _%hd5336453412%_)))
                                                          (let ((_%lp-hd5336853422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e5336753418%_)))
                        (_%lp-tl5336953425%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e5336753418%_))))
                    (if (gx#stx-pair? _%lp-hd5336853422%_)
                        (let ((_%e5337453428%_
                               (gx#syntax-e _%lp-hd5336853422%_)))
                          (let ((_%hd5337553432%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5337453428%_)))
                                (_%tl5337653435%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5337453428%_))))
                            (if (gx#stx-pair? _%tl5337653435%_)
                                (let ((_%e5337753438%_
                                       (gx#syntax-e _%tl5337653435%_)))
                                  (let ((_%hd5337853442%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5337753438%_)))
                                        (_%tl5337953445%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5337753438%_))))
                                    (if (gx#stx-null? _%tl5337953445%_)
                                        (_%loop5336653408%_
                                         _%lp-tl5336953425%_
                                         (cons _%hd5337853442%_
                                               _%val5337053415%_)
                                         (cons _%hd5337553432%_
                                               _%key5337153416%_))
                                        (_%g5335653385%_ _%g5335753389%_))))
                                (_%g5335653385%_ _%g5335753389%_))))
                        (_%g5335653385%_ _%g5335753389%_))))
                (let ((_%val5337253448%_ (reverse _%val5337053415%_))
                      (_%key5337353450%_ (reverse _%key5337153416%_)))
                  ((lambda (_%g5335853452%_ _%g5335953454%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g5335853452%_
                                    _%g5335953454%_)
                                   (foldr (lambda (_%g5346953473%_
                                                   _%g5347053476%_
                                                   _%g5347153478%_)
                                            (cons (cons _%g5347053476%_
                                                        (cons _%g5346953473%_
                                                              '()))
                                                  _%g5347153478%_))
                                          '()
                                          _%g5335853452%_
                                          _%g5335953454%_)))))
                   _%val5337253448%_
                   _%key5337353450%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop5336653408%_
                                           _%target5336353402%_
                                           '()
                                           '()))
                                        (_%g5335653385%_ _%g5335753389%_)))))
                              (_%g5335653385%_ _%g5335753389%_))))
                      (_%g5335653385%_ _%g5335753389%_)))))
          (_%g5335553481%_ _%$stx53352%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eq|
      (lambda (_%$stx53486%_)
        (let* ((_%g5349053519%_
                (lambda (_%g5349153515%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5349153515%_)))
               (_%g5348953615%_
                (lambda (_%g5349153523%_)
                  (if (gx#stx-pair? _%g5349153523%_)
                      (let ((_%e5349453526%_ (gx#syntax-e _%g5349153523%_)))
                        (let ((_%hd5349553530%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5349453526%_)))
                              (_%tl5349653533%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5349453526%_))))
                          (if (gx#stx-pair/null? _%tl5349653533%_)
                              (let ((_g54700_
                                     (gx#syntax-split-splice
                                      _%tl5349653533%_
                                      '0)))
                                (begin
                                  (let ((_g54701_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g54700_)
                                               (##values-length _g54700_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g54701_ 2)))
                                        (error "Context expects 2 values"
                                               _g54701_)))
                                  (let ((_%target5349753536%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g54700_ 0)))
                                        (_%tl5349953539%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g54700_ 1))))
                                    (if (gx#stx-null? _%tl5349953539%_)
                                        (letrec ((_%loop5350053542%_
                                                  (lambda (_%hd5349853546%_
                                                           _%val5350453549%_
                                                           _%key5350553550%_)
                                                    (if (gx#stx-pair?
                                                         _%hd5349853546%_)
                                                        (let ((_%e5350153552%_
                                                               (gx#syntax-e
                                                                _%hd5349853546%_)))
                                                          (let ((_%lp-hd5350253556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e5350153552%_)))
                        (_%lp-tl5350353559%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e5350153552%_))))
                    (if (gx#stx-pair? _%lp-hd5350253556%_)
                        (let ((_%e5350853562%_
                               (gx#syntax-e _%lp-hd5350253556%_)))
                          (let ((_%hd5350953566%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5350853562%_)))
                                (_%tl5351053569%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5350853562%_))))
                            (if (gx#stx-pair? _%tl5351053569%_)
                                (let ((_%e5351153572%_
                                       (gx#syntax-e _%tl5351053569%_)))
                                  (let ((_%hd5351253576%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5351153572%_)))
                                        (_%tl5351353579%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5351153572%_))))
                                    (if (gx#stx-null? _%tl5351353579%_)
                                        (_%loop5350053542%_
                                         _%lp-tl5350353559%_
                                         (cons _%hd5351253576%_
                                               _%val5350453549%_)
                                         (cons _%hd5350953566%_
                                               _%key5350553550%_))
                                        (_%g5349053519%_ _%g5349153523%_))))
                                (_%g5349053519%_ _%g5349153523%_))))
                        (_%g5349053519%_ _%g5349153523%_))))
                (let ((_%val5350653582%_ (reverse _%val5350453549%_))
                      (_%key5350753584%_ (reverse _%key5350553550%_)))
                  ((lambda (_%g5349253586%_ _%g5349353588%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g5349253586%_
                                    _%g5349353588%_)
                                   (foldr (lambda (_%g5360353607%_
                                                   _%g5360453610%_
                                                   _%g5360553612%_)
                                            (cons (cons _%g5360453610%_
                                                        (cons _%g5360353607%_
                                                              '()))
                                                  _%g5360553612%_))
                                          '()
                                          _%g5349253586%_
                                          _%g5349353588%_)))))
                   _%val5350653582%_
                   _%key5350753584%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop5350053542%_
                                           _%target5349753536%_
                                           '()
                                           '()))
                                        (_%g5349053519%_ _%g5349153523%_)))))
                              (_%g5349053519%_ _%g5349153523%_))))
                      (_%g5349053519%_ _%g5349153523%_)))))
          (_%g5348953615%_ _%$stx53486%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eqv|
      (lambda (_%$stx53620%_)
        (let* ((_%g5362453653%_
                (lambda (_%g5362553649%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5362553649%_)))
               (_%g5362353749%_
                (lambda (_%g5362553657%_)
                  (if (gx#stx-pair? _%g5362553657%_)
                      (let ((_%e5362853660%_ (gx#syntax-e _%g5362553657%_)))
                        (let ((_%hd5362953664%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5362853660%_)))
                              (_%tl5363053667%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5362853660%_))))
                          (if (gx#stx-pair/null? _%tl5363053667%_)
                              (let ((_g54702_
                                     (gx#syntax-split-splice
                                      _%tl5363053667%_
                                      '0)))
                                (begin
                                  (let ((_g54703_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g54702_)
                                               (##values-length _g54702_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g54703_ 2)))
                                        (error "Context expects 2 values"
                                               _g54703_)))
                                  (let ((_%target5363153670%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g54702_ 0)))
                                        (_%tl5363353673%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g54702_ 1))))
                                    (if (gx#stx-null? _%tl5363353673%_)
                                        (letrec ((_%loop5363453676%_
                                                  (lambda (_%hd5363253680%_
                                                           _%val5363853683%_
                                                           _%key5363953684%_)
                                                    (if (gx#stx-pair?
                                                         _%hd5363253680%_)
                                                        (let ((_%e5363553686%_
                                                               (gx#syntax-e
                                                                _%hd5363253680%_)))
                                                          (let ((_%lp-hd5363653690%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e5363553686%_)))
                        (_%lp-tl5363753693%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e5363553686%_))))
                    (if (gx#stx-pair? _%lp-hd5363653690%_)
                        (let ((_%e5364253696%_
                               (gx#syntax-e _%lp-hd5363653690%_)))
                          (let ((_%hd5364353700%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5364253696%_)))
                                (_%tl5364453703%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5364253696%_))))
                            (if (gx#stx-pair? _%tl5364453703%_)
                                (let ((_%e5364553706%_
                                       (gx#syntax-e _%tl5364453703%_)))
                                  (let ((_%hd5364653710%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e5364553706%_)))
                                        (_%tl5364753713%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e5364553706%_))))
                                    (if (gx#stx-null? _%tl5364753713%_)
                                        (_%loop5363453676%_
                                         _%lp-tl5363753693%_
                                         (cons _%hd5364653710%_
                                               _%val5363853683%_)
                                         (cons _%hd5364353700%_
                                               _%key5363953684%_))
                                        (_%g5362453653%_ _%g5362553657%_))))
                                (_%g5362453653%_ _%g5362553657%_))))
                        (_%g5362453653%_ _%g5362553657%_))))
                (let ((_%val5364053716%_ (reverse _%val5363853683%_))
                      (_%key5364153718%_ (reverse _%key5363953684%_)))
                  ((lambda (_%g5362653720%_ _%g5362753722%_)
                     (cons (gx#datum->syntax '#f '~hash-table)
                           (cons (gx#datum->syntax '#f 'make-hash-table-eqv)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%g5362653720%_
                                    _%g5362753722%_)
                                   (foldr (lambda (_%g5373753741%_
                                                   _%g5373853744%_
                                                   _%g5373953746%_)
                                            (cons (cons _%g5373853744%_
                                                        (cons _%g5373753741%_
                                                              '()))
                                                  _%g5373953746%_))
                                          '()
                                          _%g5362653720%_
                                          _%g5362753722%_)))))
                   _%val5364053716%_
                   _%key5364153718%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop5363453676%_
                                           _%target5363153670%_
                                           '()
                                           '()))
                                        (_%g5362453653%_ _%g5362553657%_)))))
                              (_%g5362453653%_ _%g5362553657%_))))
                      (_%g5362453653%_ _%g5362553657%_)))))
          (_%g5362353749%_ _%$stx53620%_))))
    (define |gerbil/core/more-sugar[:0:]#~hash-table|
      (lambda (_%stx53754%_)
        (let* ((_%g5375753781%_
                (lambda (_%g5375853777%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5375853777%_)))
               (_%g5375654022%_
                (lambda (_%g5375853785%_)
                  (if (gx#stx-pair? _%g5375853785%_)
                      (let ((_%e5376153788%_ (gx#syntax-e _%g5375853785%_)))
                        (let ((_%hd5376253792%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5376153788%_)))
                              (_%tl5376353795%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5376153788%_))))
                          (if (gx#stx-pair? _%tl5376353795%_)
                              (let ((_%e5376453798%_
                                     (gx#syntax-e _%tl5376353795%_)))
                                (let ((_%hd5376553802%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5376453798%_)))
                                      (_%tl5376653805%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5376453798%_))))
                                  (if (gx#stx-pair/null? _%tl5376653805%_)
                                      (let ((_g54704_
                                             (gx#syntax-split-splice
                                              _%tl5376653805%_
                                              '0)))
                                        (begin
                                          (let ((_g54705_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g54704_)
                                                       (##values-length
                                                        _g54704_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g54705_ 2)))
                                                (error "Context expects 2 values"
                                                       _g54705_)))
                                          (let ((_%target5376753808%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g54704_ 0)))
                                                (_%tl5376953811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g54704_ 1))))
                                            (if (gx#stx-null? _%tl5376953811%_)
                                                (letrec ((_%loop5377053814%_
                                                          (lambda (_%hd5376853818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%entry5377453821%_)
                    (if (gx#stx-pair? _%hd5376853818%_)
                        (let ((_%e5377153823%_ (gx#syntax-e _%hd5376853818%_)))
                          (let ((_%lp-hd5377253827%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e5377153823%_)))
                                (_%lp-tl5377353830%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e5377153823%_))))
                            (_%loop5377053814%_
                             _%lp-tl5377353830%_
                             (cons _%lp-hd5377253827%_ _%entry5377453821%_))))
                        (let ((_%entry5377553833%_
                               (reverse _%entry5377453821%_)))
                          ((lambda (_%g5375953836%_ _%g5376053838%_)
                             (let* ((_%g5385653864%_
                                     (lambda (_%g5385753860%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g5385753860%_)))
                                    (_%g5385554010%_
                                     (lambda (_%g5385753868%_)
                                       ((lambda (_%g5385853871%_)
                                          (let* ((_%g5388353909%_
                                                  (lambda (_%g5388453905%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g5388453905%_)))
                                                 (_%g5388253998%_
                                                  (lambda (_%g5388453913%_)
                                                    (if (gx#stx-pair/null?
                                                         _%g5388453913%_)
                                                        (let ((_g54706_
                                                               (gx#syntax-split-splice
                                                                _%g5388453913%_
                                                                '0)))
                                                          (begin
                                                            (let ((_g54707_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (if (##values? _g54706_)
                                 (##values-length _g54706_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g54707_ 2)))
                          (error "Context expects 2 values" _g54707_)))
                    (let ((_%target5388753916%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g54706_ 0)))
                          (_%tl5388953919%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g54706_ 1))))
                      (if (gx#stx-null? _%tl5388953919%_)
                          (letrec ((_%loop5389053922%_
                                    (lambda (_%hd5388853926%_
                                             _%val5389453929%_
                                             _%key5389553930%_)
                                      (if (gx#stx-pair? _%hd5388853926%_)
                                          (let ((_%e5389153932%_
                                                 (gx#syntax-e
                                                  _%hd5388853926%_)))
                                            (let ((_%lp-hd5389253936%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e5389153932%_)))
                                                  (_%lp-tl5389353939%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e5389153932%_))))
                                              (if (gx#stx-pair?
                                                   _%lp-hd5389253936%_)
                                                  (let ((_%e5389853942%_
                                                         (gx#syntax-e
                                                          _%lp-hd5389253936%_)))
                                                    (let ((_%hd5389953946%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e5389853942%_)))
                                                          (_%tl5390053949%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e5389853942%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl5390053949%_)
                                                          (let ((_%e5390153952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl5390053949%_)))
                    (let ((_%hd5390253956%_
                           (let ()
                             (declare (not safe))
                             (##car _%e5390153952%_)))
                          (_%tl5390353959%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e5390153952%_))))
                      (if (gx#stx-null? _%tl5390353959%_)
                          (_%loop5389053922%_
                           _%lp-tl5389353939%_
                           (cons _%hd5390253956%_ _%val5389453929%_)
                           (cons _%hd5389953946%_ _%key5389553930%_))
                          (_%g5388353909%_ _%g5388453913%_))))
                  (_%g5388353909%_ _%g5388453913%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g5388353909%_
                                                   _%g5388453913%_))))
                                          (let ((_%val5389653962%_
                                                 (reverse _%val5389453929%_))
                                                (_%key5389753964%_
                                                 (reverse _%key5389553930%_)))
                                            ((lambda (_%g5388553966%_
                                                      _%g5388653968%_)
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'ht)
                         (cons (cons _%g5376053838%_
                                     (cons 'size: (cons _%g5385853871%_ '())))
                               '()))
                   (begin
                     (gx#syntax-check-splice-targets
                      _%g5388553966%_
                      _%g5388653968%_)
                     (foldr (lambda (_%g5398653990%_
                                     _%g5398753993%_
                                     _%g5398853995%_)
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'ht)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quasiquote)
                                                            (cons _%g5398753993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%g5398653990%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g5398853995%_))
                            (cons (gx#datum->syntax '#f 'ht) '())
                            _%g5388553966%_
                            _%g5388653968%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%val5389653962%_
                                             _%key5389753964%_))))))
                            (_%loop5389053922%_ _%target5388753916%_ '() '()))
                          (_%g5388353909%_ _%g5388453913%_)))))
                (_%g5388353909%_ _%g5388453913%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g5388253998%_
                                             (foldr (lambda (_%g5400154004%_
                                                             _%g5400254007%_)
                                                      (cons _%g5400154004%_
                                                            _%g5400254007%_))
                                                    '()
                                                    _%g5375953836%_))))
                                        _%g5385753868%_))))
                               (_%g5385554010%_
                                (gx#stx-length
                                 (foldr (lambda (_%g5401354016%_
                                                 _%g5401454019%_)
                                          (cons _%g5401354016%_
                                                _%g5401454019%_))
                                        '()
                                        _%g5375953836%_)))))
                           _%entry5377553833%_
                           _%hd5376553802%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop5377053814%_
                                                   _%target5376753808%_
                                                   '()))
                                                (_%g5375753781%_
                                                 _%g5375853785%_)))))
                                      (_%g5375753781%_ _%g5375853785%_))))
                              (_%g5375753781%_ _%g5375853785%_))))
                      (_%g5375753781%_ _%g5375853785%_)))))
          (_%g5375654022%_ _%stx53754%_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_%stx54028%_)
        (let* ((_%g5403154045%_
                (lambda (_%g5403254041%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5403254041%_)))
               (_%g5403054117%_
                (lambda (_%g5403254049%_)
                  (if (gx#stx-pair? _%g5403254049%_)
                      (let ((_%e5403454052%_ (gx#syntax-e _%g5403254049%_)))
                        (let ((_%hd5403554056%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5403454052%_)))
                              (_%tl5403654059%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5403454052%_))))
                          (if (gx#stx-pair? _%tl5403654059%_)
                              (let ((_%e5403754062%_
                                     (gx#syntax-e _%tl5403654059%_)))
                                (let ((_%hd5403854066%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5403754062%_)))
                                      (_%tl5403954069%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5403754062%_))))
                                  (if (gx#stx-null? _%tl5403954069%_)
                                      ((lambda (_%g5403354072%_)
                                         (if (gx#stx-string? _%g5403354072%_)
                                             (let* ((_%g5408654094%_
                                                     (lambda (_%g5408754090%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g5408754090%_)))
                                                    (_%g5408554113%_
                                                     (lambda (_%g5408754098%_)
                                                       ((lambda (_%g5408854101%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote)
                        (cons _%g5408854101%_ '())))
                _%g5408754098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g5408554113%_
                                                (string->bytes
                                                 (gx#stx-e _%g5403354072%_))))
                                             (_%g5403154045%_
                                              _%g5403254049%_)))
                                       _%hd5403854066%_)
                                      (_%g5403154045%_ _%g5403254049%_))))
                              (_%g5403154045%_ _%g5403254049%_))))
                      (_%g5403154045%_ _%g5403254049%_)))))
          (_%g5403054117%_ _%stx54028%_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_%stx54121%_)
        (let* ((_%g5412454138%_
                (lambda (_%g5412554134%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g5412554134%_)))
               (_%g5412354179%_
                (lambda (_%g5412554142%_)
                  (if (gx#stx-pair? _%g5412554142%_)
                      (let ((_%e5412754145%_ (gx#syntax-e _%g5412554142%_)))
                        (let ((_%hd5412854149%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e5412754145%_)))
                              (_%tl5412954152%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e5412754145%_))))
                          (if (gx#stx-pair? _%tl5412954152%_)
                              (let ((_%e5413054155%_
                                     (gx#syntax-e _%tl5412954152%_)))
                                (let ((_%hd5413154159%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e5413054155%_)))
                                      (_%tl5413254162%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e5413054155%_))))
                                  (if (gx#stx-null? _%tl5413254162%_)
                                      ((lambda (_%g5412654165%_)
                                         (if (gx#current-expander-compiling?)
                                             (gx#eval-syntax _%g5412654165%_)
                                             '#!void)
                                         (cons (gx#datum->syntax '#f 'void)
                                               '()))
                                       _%hd5413154159%_)
                                      (_%g5412454138%_ _%g5412554142%_))))
                              (_%g5412454138%_ _%g5412554142%_))))
                      (_%g5412454138%_ _%g5412554142%_)))))
          (_%g5412354179%_ _%stx54121%_))))))
