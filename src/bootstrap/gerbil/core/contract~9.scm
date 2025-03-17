(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85131_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85138_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85141_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85142_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85150_|
    (##structure
     gx#syntax-quote::t
     'lambda/c
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85151_|
    (##structure
     gx#syntax-quote::t
     'case-lambda/c
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85152_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85154_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85155_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85156_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85158_|
    (##structure gx#syntax-quote::t ':= #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85159_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85160_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85162_|
    (##structure gx#syntax-quote::t ':= #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85163_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85164_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85165_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85166_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85167_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85168_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85169_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85170_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85171_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85172_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85173_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85174_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85175_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85176_|
    (##structure gx#syntax-quote::t ':~ #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85177_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85178_|
    (##structure gx#syntax-quote::t ':? #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypedDefinitions[1]#_g85179_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypedDefinitions[1]#is-signature?|
      (lambda (_%formals64465%_)
        (let _%lp64468%_ ((_%rest64471%_ _%formals64465%_))
          (let* ((_%__stx8287182872%_ _%rest64471%_)
                 (_%g6448064549%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8287182872%_))))
            (let ((_%__kont8287482875%_
                   (lambda (_%L64850%_ _%L64852%_) (_%lp64468%_ _%L64850%_)))
                  (_%__kont8287682877%_
                   (lambda (_%L64816%_ _%L64818%_) (_%lp64468%_ _%L64816%_)))
                  (_%__kont8287882879%_
                   (lambda (_%L64762%_ _%L64764%_ _%L64765%_) '#t))
                  (_%__kont8288082881%_
                   (lambda (_%L64718%_ _%L64720%_ _%L64721%_)
                     (_%lp64468%_ _%L64718%_)))
                  (_%__kont8288282883%_
                   (lambda (_%L64670%_ _%L64672%_ _%L64673%_)
                     (_%lp64468%_ _%L64670%_)))
                  (_%__kont8288482885%_
                   (lambda (_%L64597%_ _%L64599%_ _%L64600%_ _%L64601%_) '#t))
                  (_%__kont8288682887%_ (lambda () '#f)))
              (let* ((_%__match8298282983%_
                      (lambda (_%e6453564567%_
                               _%hd6453664571%_
                               _%tl6453764574%_
                               _%e6453864577%_
                               _%hd6453964581%_
                               _%tl6454064584%_
                               _%e6454164587%_
                               _%hd6454264591%_
                               _%tl6454364594%_)
                        (let ((_%L64597%_ _%tl6454064584%_)
                              (_%L64599%_ _%tl6454364594%_)
                              (_%L64600%_ _%hd6454264591%_)
                              (_%L64601%_ _%hd6453664571%_))
                          (if (and (gx#stx-keyword? _%L64601%_)
                                   (gx#identifier? _%L64600%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~Interface[1]#signature-contract?|
                                      _%L64599%_)))
                              (_%__kont8288482885%_
                               _%L64597%_
                               _%L64599%_
                               _%L64600%_
                               _%L64601%_)
                              (_%__kont8288682887%_)))))
                     (_%__match8296482965%_
                      (lambda (_%e6451964630%_
                               _%hd6452064634%_
                               _%tl6452164637%_
                               _%e6452264640%_
                               _%hd6452364644%_
                               _%tl6452464647%_
                               _%e6452564650%_
                               _%hd6452664654%_
                               _%tl6452764657%_
                               _%e6452864660%_
                               _%hd6452964664%_
                               _%tl6453064667%_)
                        (let ((_%L64670%_ _%tl6452464647%_)
                              (_%L64672%_ _%hd6452664654%_)
                              (_%L64673%_ _%hd6452064634%_))
                          (if (and (gx#stx-keyword? _%L64673%_)
                                   (gx#identifier? _%L64672%_))
                              (_%__kont8288282883%_
                               _%L64670%_
                               _%L64672%_
                               _%L64673%_)
                              (_%__match8298282983%_
                               _%e6451964630%_
                               _%hd6452064634%_
                               _%tl6452164637%_
                               _%e6452264640%_
                               _%hd6452364644%_
                               _%tl6452464647%_
                               _%e6452564650%_
                               _%hd6452664654%_
                               _%tl6452764657%_)))))
                     (_%__match8293882939%_
                      (lambda (_%e6451064698%_
                               _%hd6451164702%_
                               _%tl6451264705%_
                               _%e6451364708%_
                               _%hd6451464712%_
                               _%tl6451564715%_)
                        (let ((_%L64718%_ _%tl6451564715%_)
                              (_%L64720%_ _%hd6451464712%_)
                              (_%L64721%_ _%hd6451164702%_))
                          (if (and (gx#stx-keyword? _%L64721%_)
                                   (gx#identifier? _%L64720%_))
                              (_%__kont8288082881%_
                               _%L64718%_
                               _%L64720%_
                               _%L64721%_)
                              (if (gx#stx-pair? _%hd6451464712%_)
                                  (let ((_%e6452564650%_
                                         (gx#syntax-e _%hd6451464712%_)))
                                    (let ((_%tl6452764657%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6452564650%_)))
                                          (_%hd6452664654%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6452564650%_))))
                                      (if (gx#stx-pair? _%tl6452764657%_)
                                          (let ((_%e6452864660%_
                                                 (gx#syntax-e
                                                  _%tl6452764657%_)))
                                            (let ((_%tl6453064667%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6452864660%_)))
                                                  (_%hd6452964664%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6452864660%_))))
                                              (if (gx#stx-null?
                                                   _%tl6453064667%_)
                                                  (_%__match8296482965%_
                                                   _%e6451064698%_
                                                   _%hd6451164702%_
                                                   _%tl6451264705%_
                                                   _%e6451364708%_
                                                   _%hd6451464712%_
                                                   _%tl6451564715%_
                                                   _%e6452564650%_
                                                   _%hd6452664654%_
                                                   _%tl6452764657%_
                                                   _%e6452864660%_
                                                   _%hd6452964664%_
                                                   _%tl6453064667%_)
                                                  (_%__match8298282983%_
                                                   _%e6451064698%_
                                                   _%hd6451164702%_
                                                   _%tl6451264705%_
                                                   _%e6451364708%_
                                                   _%hd6451464712%_
                                                   _%tl6451564715%_
                                                   _%e6452564650%_
                                                   _%hd6452664654%_
                                                   _%tl6452764657%_))))
                                          (_%__match8298282983%_
                                           _%e6451064698%_
                                           _%hd6451164702%_
                                           _%tl6451264705%_
                                           _%e6451364708%_
                                           _%hd6451464712%_
                                           _%tl6451564715%_
                                           _%e6452564650%_
                                           _%hd6452664654%_
                                           _%tl6452764657%_))))
                                  (_%__kont8288682887%_))))))
                     (_%__match8292682927%_
                      (lambda (_%e6450164742%_
                               _%hd6450264746%_
                               _%tl6450364749%_
                               _%e6450464752%_
                               _%hd6450564756%_
                               _%tl6450664759%_)
                        (let ((_%L64762%_ _%tl6450364749%_)
                              (_%L64764%_ _%tl6450664759%_)
                              (_%L64765%_ _%hd6450564756%_))
                          (if (and (gx#identifier? _%L64765%_)
                                   (let ()
                                     (declare (not safe))
                                     (|gerbil/core/contract~Interface[1]#signature-contract?|
                                      _%L64764%_)))
                              (_%__kont8287882879%_
                               _%L64762%_
                               _%L64764%_
                               _%L64765%_)
                              (if (gx#stx-pair? _%tl6450364749%_)
                                  (let ((_%e6451364708%_
                                         (gx#syntax-e _%tl6450364749%_)))
                                    (let ((_%tl6451564715%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6451364708%_)))
                                          (_%hd6451464712%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6451364708%_))))
                                      (_%__match8293882939%_
                                       _%e6450164742%_
                                       _%hd6450264746%_
                                       _%tl6450364749%_
                                       _%e6451364708%_
                                       _%hd6451464712%_
                                       _%tl6451564715%_)))
                                  (_%__kont8288682887%_))))))
                     (_%__match8289482895%_
                      (lambda (_%e6448464840%_
                               _%hd6448564844%_
                               _%tl6448664847%_)
                        (let ((_%L64850%_ _%tl6448664847%_)
                              (_%L64852%_ _%hd6448564844%_))
                          (if (gx#identifier? _%L64852%_)
                              (_%__kont8287482875%_ _%L64850%_ _%L64852%_)
                              (if (gx#stx-pair? _%hd6448564844%_)
                                  (let ((_%e6449264796%_
                                         (gx#syntax-e _%hd6448564844%_)))
                                    (let ((_%tl6449464803%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6449264796%_)))
                                          (_%hd6449364800%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6449264796%_))))
                                      (if (gx#stx-pair? _%tl6449464803%_)
                                          (let ((_%e6449564806%_
                                                 (gx#syntax-e
                                                  _%tl6449464803%_)))
                                            (let ((_%tl6449764813%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6449564806%_)))
                                                  (_%hd6449664810%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6449564806%_))))
                                              (if (gx#stx-null?
                                                   _%tl6449764813%_)
                                                  (_%__kont8287682877%_
                                                   _%tl6448664847%_
                                                   _%hd6449364800%_)
                                                  (_%__match8292682927%_
                                                   _%e6448464840%_
                                                   _%hd6448564844%_
                                                   _%tl6448664847%_
                                                   _%e6449264796%_
                                                   _%hd6449364800%_
                                                   _%tl6449464803%_))))
                                          (_%__match8292682927%_
                                           _%e6448464840%_
                                           _%hd6448564844%_
                                           _%tl6448664847%_
                                           _%e6449264796%_
                                           _%hd6449364800%_
                                           _%tl6449464803%_))))
                                  (if (gx#stx-pair? _%tl6448664847%_)
                                      (let ((_%e6451364708%_
                                             (gx#syntax-e _%tl6448664847%_)))
                                        (let ((_%tl6451564715%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6451364708%_)))
                                              (_%hd6451464712%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6451364708%_))))
                                          (_%__match8293882939%_
                                           _%e6448464840%_
                                           _%hd6448564844%_
                                           _%tl6448664847%_
                                           _%e6451364708%_
                                           _%hd6451464712%_
                                           _%tl6451564715%_)))
                                      (_%__kont8288682887%_))))))))
                (if (gx#stx-pair? _%__stx8287182872%_)
                    (let ((_%e6448464840%_ (gx#syntax-e _%__stx8287182872%_)))
                      (let ((_%tl6448664847%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6448464840%_)))
                            (_%hd6448564844%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6448464840%_))))
                        (_%__match8289482895%_
                         _%e6448464840%_
                         _%hd6448564844%_
                         _%tl6448664847%_)))
                    (_%__kont8288682887%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#def/c|
      (lambda (_%stx64867%_)
        (letrec ((_%make-definition64870%_
                  (lambda (_%id65968%_
                           _%args65970%_
                           _%return65971%_
                           _%body65972%_)
                    (let ()
                      (declare (not safe))
                      (|gerbil/core/contract~Interface[1]#check-signature!__%|
                       '#f
                       absent-value
                       absent-value
                       _%stx64867%_
                       _%args65970%_
                       _%return65971%_))
                    (if (let ()
                          (declare (not safe))
                          (|gerbil/core/contract~Interface[1]#signature-has-keywords?|
                           _%args65970%_))
                        (_%make-keyword-def64872%_
                         _%id65968%_
                         _%args65970%_
                         _%return65971%_
                         _%body65972%_)
                        (let* ((_%unchecked-id65974%_
                                (gx#stx-identifier
                                 _%id65968%_
                                 '"__"
                                 _%id65968%_))
                               (_%g6597765992%_
                                (lambda (_%g6597865988%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g6597865988%_)))
                               (_%g6597666038%_
                                (lambda (_%g6597865996%_)
                                  (if (gx#stx-pair? _%g6597865996%_)
                                      (let ((_%e6598165999%_
                                             (gx#syntax-e _%g6597865996%_)))
                                        (let ((_%hd6598266003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6598165999%_)))
                                              (_%tl6598366006%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6598165999%_))))
                                          (if (gx#stx-pair? _%tl6598366006%_)
                                              (let ((_%e6598466009%_
                                                     (gx#syntax-e
                                                      _%tl6598366006%_)))
                                                (let ((_%hd6598566013%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6598466009%_)))
                                                      (_%tl6598666016%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6598466009%_))))
                                                  (if (gx#stx-null?
                                                       _%tl6598666016%_)
                                                      ((lambda (_%L66019%_
                                                                _%L66021%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'begin)
                                                               (cons _%L66021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%L66019%_ '()))))
               _%hd6598566013%_
               _%hd6598266003%_)
              (_%g6597765992%_ _%g6597865996%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g6597765992%_
                                               _%g6597865996%_))))
                                      (_%g6597765992%_ _%g6597865996%_)))))
                          (_%g6597666038%_
                           (list (_%make-checked-def64873%_
                                  _%id65968%_
                                  _%unchecked-id65974%_
                                  _%args65970%_
                                  _%return65971%_)
                                 (_%make-unchecked-def64874%_
                                  _%unchecked-id65974%_
                                  _%args65970%_
                                  _%return65971%_
                                  _%body65972%_)))))))
                 (_%make-keyword-def64872%_
                  (lambda (_%id65775%_
                           _%signature65777%_
                           _%return65778%_
                           _%body65779%_)
                    (let* ((_%g6578165821%_
                            (lambda (_%g6578265817%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6578265817%_)))
                           (_%g6578065964%_
                            (lambda (_%g6578265825%_)
                              (if (gx#stx-pair? _%g6578265825%_)
                                  (let ((_%e6578965828%_
                                         (gx#syntax-e _%g6578265825%_)))
                                    (let ((_%hd6579065832%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6578965828%_)))
                                          (_%tl6579165835%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6578965828%_))))
                                      (if (gx#stx-pair? _%tl6579165835%_)
                                          (let ((_%e6579265838%_
                                                 (gx#syntax-e
                                                  _%tl6579165835%_)))
                                            (let ((_%hd6579365842%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6579265838%_)))
                                                  (_%tl6579465845%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6579265838%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6579465845%_)
                                                  (let ((_%e6579565848%_
                                                         (gx#syntax-e
                                                          _%tl6579465845%_)))
                                                    (let ((_%hd6579665852%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6579565848%_)))
                                                          (_%tl6579765855%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6579565848%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6579765855%_)
                                                          (let ((_%e6579865858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6579765855%_)))
                    (let ((_%hd6579965862%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6579865858%_)))
                          (_%tl6580065865%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6579865858%_))))
                      (if (gx#stx-pair? _%tl6580065865%_)
                          (let ((_%e6580165868%_
                                 (gx#syntax-e _%tl6580065865%_)))
                            (let ((_%hd6580265872%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6580165868%_)))
                                  (_%tl6580365875%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6580165868%_))))
                              (if (gx#stx-pair? _%tl6580365875%_)
                                  (let ((_%e6580465878%_
                                         (gx#syntax-e _%tl6580365875%_)))
                                    (let ((_%hd6580565882%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6580465878%_)))
                                          (_%tl6580665885%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6580465878%_))))
                                      (if (gx#stx-pair/null? _%hd6580565882%_)
                                          (let ((_g85125_
                                                 (gx#syntax-split-splice
                                                  _%hd6580565882%_
                                                  '0)))
                                            (begin
                                              (let ((_g85126_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g85125_)
                                                           (##values-length
                                                            _g85125_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g85126_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g85126_)))
                                              (let ((_%target6580765888%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g85125_
                                                        0)))
                                                    (_%tl6580965891%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g85125_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%tl6580965891%_)
                                                    (letrec ((_%loop6581065894%_
                                                              (lambda (_%hd6580865898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body6581465901%_)
                        (if (gx#stx-pair? _%hd6580865898%_)
                            (let ((_%e6581165904%_
                                   (gx#syntax-e _%hd6580865898%_)))
                              (let ((_%lp-hd6581265908%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6581165904%_)))
                                    (_%lp-tl6581365911%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6581165904%_))))
                                (_%loop6581065894%_
                                 _%lp-tl6581365911%_
                                 (cons _%lp-hd6581265908%_
                                       _%body6581465901%_))))
                            (let ((_%body6581565914%_
                                   (reverse _%body6581465901%_)))
                              (if (gx#stx-null? _%tl6580665885%_)
                                  ((lambda (_%L65918%_
                                            _%L65920%_
                                            _%L65921%_
                                            _%L65922%_
                                            _%L65923%_
                                            _%L65924%_)
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'def)
                                            (cons (cons _%L65924%_ _%L65923%_)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'with-procedure-signature)
                                                              (cons (cons _%L65922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _%L65921%_ (cons '#f '())))
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'begin-annotation)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     '@type)
                                                    (cons _%L65920%_ '()))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'with-procedure-contract)
                                                          (cons _%L65922%_
                                                                (foldr (lambda (_%g6595565958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _%g6595665961%_)
                                 (cons _%g6595565958%_ _%g6595665961%_))
                               '()
                               _%L65918%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (gx#stx-source _%stx64867%_)))
                                   _%body6581565914%_
                                   _%hd6580265872%_
                                   _%hd6579965862%_
                                   _%hd6579665852%_
                                   _%hd6579365842%_
                                   _%hd6579065832%_)
                                  (_%g6578165821%_ _%g6578265825%_)))))))
              (_%loop6581065894%_ _%target6580765888%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g6578165821%_
                                                     _%g6578265825%_)))))
                                          (_%g6578165821%_ _%g6578265825%_))))
                                  (_%g6578165821%_ _%g6578265825%_))))
                          (_%g6578165821%_ _%g6578265825%_))))
                  (_%g6578165821%_ _%g6578265825%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6578165821%_
                                                   _%g6578265825%_))))
                                          (_%g6578165821%_ _%g6578265825%_))))
                                  (_%g6578165821%_ _%g6578265825%_)))))
                      (_%g6578065964%_
                       (list _%id65775%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                _%signature65777%_))
                             _%signature65777%_
                             _%return65778%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                _%stx64867%_
                                _%return65778%_))
                             _%body65779%_)))))
                 (_%make-checked-def64873%_
                  (lambda (_%id65556%_
                           _%unchecked-id65558%_
                           _%signature65559%_
                           _%return65560%_)
                    (let* ((_%g6556265606%_
                            (lambda (_%g6556365602%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6556365602%_)))
                           (_%g6556165771%_
                            (lambda (_%g6556365610%_)
                              (if (gx#stx-pair? _%g6556365610%_)
                                  (let ((_%e6557165613%_
                                         (gx#syntax-e _%g6556365610%_)))
                                    (let ((_%hd6557265617%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6557165613%_)))
                                          (_%tl6557365620%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6557165613%_))))
                                      (if (gx#stx-pair? _%tl6557365620%_)
                                          (let ((_%e6557465623%_
                                                 (gx#syntax-e
                                                  _%tl6557365620%_)))
                                            (let ((_%hd6557565627%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6557465623%_)))
                                                  (_%tl6557665630%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6557465623%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6557665630%_)
                                                  (let ((_%e6557765633%_
                                                         (gx#syntax-e
                                                          _%tl6557665630%_)))
                                                    (let ((_%hd6557865637%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6557765633%_)))
                                                          (_%tl6557965640%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6557765633%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6557965640%_)
                                                          (let ((_%e6558065643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6557965640%_)))
                    (let ((_%hd6558165647%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6558065643%_)))
                          (_%tl6558265650%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6558065643%_))))
                      (if (gx#stx-pair/null? _%hd6558165647%_)
                          (let ((_g85127_
                                 (gx#syntax-split-splice _%hd6558165647%_ '0)))
                            (begin
                              (let ((_g85128_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g85127_)
                                           (##values-length _g85127_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g85128_ 2)))
                                    (error "Context expects 2 values"
                                           _g85128_)))
                              (let ((_%target6558365653%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g85127_ 0)))
                                    (_%tl6558565656%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g85127_ 1))))
                                (if (gx#stx-null? _%tl6558565656%_)
                                    (letrec ((_%loop6558665659%_
                                              (lambda (_%hd6558465663%_
                                                       _%out6559065666%_)
                                                (if (gx#stx-pair?
                                                     _%hd6558465663%_)
                                                    (let ((_%e6558765669%_
                                                           (gx#syntax-e
                                                            _%hd6558465663%_)))
                                                      (let ((_%lp-hd6558865673%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e6558765669%_)))
                    (_%lp-tl6558965676%_
                     (let () (declare (not safe)) (##cdr _%e6558765669%_))))
                (_%loop6558665659%_
                 _%lp-tl6558965676%_
                 (cons _%lp-hd6558865673%_ _%out6559065666%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%out6559165679%_
                                                           (reverse _%out6559065666%_)))
                                                      (if (gx#stx-pair?
                                                           _%tl6558265650%_)
                                                          (let ((_%e6559265683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6558265650%_)))
                    (let ((_%hd6559365687%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6559265683%_)))
                          (_%tl6559465690%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6559265683%_))))
                      (if (gx#stx-pair? _%tl6559465690%_)
                          (let ((_%e6559565693%_
                                 (gx#syntax-e _%tl6559465690%_)))
                            (let ((_%hd6559665697%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6559565693%_)))
                                  (_%tl6559765700%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6559565693%_))))
                              (if (gx#stx-pair? _%tl6559765700%_)
                                  (let ((_%e6559865703%_
                                         (gx#syntax-e _%tl6559765700%_)))
                                    (let ((_%hd6559965707%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6559865703%_)))
                                          (_%tl6560065710%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6559865703%_))))
                                      (if (gx#stx-null? _%tl6560065710%_)
                                          ((lambda (_%L65713%_
                                                    _%L65715%_
                                                    _%L65716%_
                                                    _%L65717%_
                                                    _%L65718%_
                                                    _%L65719%_
                                                    _%L65720%_)
                                             (if (gx#stx-list? _%L65716%_)
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons (cons _%L65720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L65718%_)
                      (cons (cons (gx#datum->syntax
                                   '#f
                                   'with-procedure-signature)
                                  (cons (cons _%L65716%_
                                              (cons _%L65715%_
                                                    (cons _%L65719%_ '())))
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@type)
                        (cons _%L65713%_ '()))
                  (cons (cons (gx#datum->syntax '#f 'with-procedure-contract)
                              (cons _%L65716%_
                                    (cons (cons _%L65719%_
                                                (foldr (lambda (_%g6575465757%_
                                                                _%g6575565760%_)
                                                         (cons _%g6575465757%_
                                                               _%g6575565760%_))
                                                       '()
                                                       _%L65717%_))
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source _%stx64867%_))
                                                 (gx#stx-wrap-source
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons (cons _%L65720%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L65718%_)
                      (cons (cons (gx#datum->syntax
                                   '#f
                                   'with-procedure-signature)
                                  (cons (cons _%L65716%_
                                              (cons _%L65715%_
                                                    (cons _%L65719%_ '())))
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@type)
                        (cons _%L65713%_ '()))
                  (cons (cons (gx#datum->syntax '#f 'with-procedure-contract)
                              (cons _%L65716%_
                                    (cons (cons (gx#datum->syntax '#f '##apply)
                                                (cons _%L65719%_
                                                      (foldr (lambda (_%g6576265765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g6576365768%_)
                       (cons _%g6576265765%_ _%g6576365768%_))
                     '()
                     _%L65717%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#stx-source
                                                   _%stx64867%_))))
                                           _%hd6559965707%_
                                           _%hd6559665697%_
                                           _%hd6559365687%_
                                           _%out6559165679%_
                                           _%hd6557865637%_
                                           _%hd6557565627%_
                                           _%hd6557265617%_)
                                          (_%g6556265606%_ _%g6556365610%_))))
                                  (_%g6556265606%_ _%g6556365610%_))))
                          (_%g6556265606%_ _%g6556365610%_))))
                  (_%g6556265606%_ _%g6556365610%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop6558665659%_
                                       _%target6558365653%_
                                       '()))
                                    (_%g6556265606%_ _%g6556365610%_)))))
                          (_%g6556265606%_ _%g6556365610%_))))
                  (_%g6556265606%_ _%g6556365610%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6556265606%_
                                                   _%g6556365610%_))))
                                          (_%g6556265606%_ _%g6556365610%_))))
                                  (_%g6556265606%_ _%g6556365610%_)))))
                      (_%g6556165771%_
                       (list _%id65556%_
                             _%unchecked-id65558%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                _%signature65559%_))
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-out|
                                _%signature65559%_))
                             _%signature65559%_
                             _%return65560%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                _%stx64867%_
                                _%return65560%_)))))))
                 (_%make-unchecked-def64874%_
                  (lambda (_%unchecked-id65381%_
                           _%signature65383%_
                           _%return65384%_
                           _%body65385%_)
                    (let* ((_%g6538765423%_
                            (lambda (_%g6538865419%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6538865419%_)))
                           (_%g6538665552%_
                            (lambda (_%g6538865427%_)
                              (if (gx#stx-pair? _%g6538865427%_)
                                  (let ((_%e6539465430%_
                                         (gx#syntax-e _%g6538865427%_)))
                                    (let ((_%hd6539565434%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6539465430%_)))
                                          (_%tl6539665437%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6539465430%_))))
                                      (if (gx#stx-pair? _%tl6539665437%_)
                                          (let ((_%e6539765440%_
                                                 (gx#syntax-e
                                                  _%tl6539665437%_)))
                                            (let ((_%hd6539865444%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6539765440%_)))
                                                  (_%tl6539965447%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6539765440%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6539965447%_)
                                                  (let ((_%e6540065450%_
                                                         (gx#syntax-e
                                                          _%tl6539965447%_)))
                                                    (let ((_%hd6540165454%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6540065450%_)))
                                                          (_%tl6540265457%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6540065450%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6540265457%_)
                                                          (let ((_%e6540365460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6540265457%_)))
                    (let ((_%hd6540465464%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6540365460%_)))
                          (_%tl6540565467%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6540365460%_))))
                      (if (gx#stx-pair? _%tl6540565467%_)
                          (let ((_%e6540665470%_
                                 (gx#syntax-e _%tl6540565467%_)))
                            (let ((_%hd6540765474%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6540665470%_)))
                                  (_%tl6540865477%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6540665470%_))))
                              (if (gx#stx-pair/null? _%hd6540765474%_)
                                  (let ((_g85129_
                                         (gx#syntax-split-splice
                                          _%hd6540765474%_
                                          '0)))
                                    (begin
                                      (let ((_g85130_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g85129_)
                                                   (##values-length _g85129_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g85130_ 2)))
                                            (error "Context expects 2 values"
                                                   _g85130_)))
                                      (let ((_%target6540965480%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g85129_ 0)))
                                            (_%tl6541165483%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g85129_ 1))))
                                        (if (gx#stx-null? _%tl6541165483%_)
                                            (letrec ((_%loop6541265486%_
                                                      (lambda (_%hd6541065490%_
                                                               _%body6541665493%_)
                                                        (if (gx#stx-pair?
                                                             _%hd6541065490%_)
                                                            (let ((_%e6541365496%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd6541065490%_)))
                      (let ((_%lp-hd6541465500%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6541365496%_)))
                            (_%lp-tl6541565503%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6541365496%_))))
                        (_%loop6541265486%_
                         _%lp-tl6541565503%_
                         (cons _%lp-hd6541465500%_ _%body6541665493%_))))
                    (let ((_%body6541765506%_ (reverse _%body6541665493%_)))
                      (if (gx#stx-null? _%tl6540865477%_)
                          ((lambda (_%L65510%_
                                    _%L65512%_
                                    _%L65513%_
                                    _%L65514%_
                                    _%L65515%_)
                             (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _%L65515%_ _%L65514%_)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'with-procedure-signature)
                                                      (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L65512%_ (cons '#f '())))
                    (cons (cons (gx#datum->syntax
                                 '#f
                                 'with-procedure-unchecked-contract)
                                (cons _%L65513%_
                                      (foldr (lambda (_%g6554365546%_
                                                      _%g6554465549%_)
                                               (cons _%g6554365546%_
                                                     _%g6554465549%_))
                                             '()
                                             _%L65510%_)))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (gx#stx-source _%stx64867%_)))
                           _%body6541765506%_
                           _%hd6540465464%_
                           _%hd6540165454%_
                           _%hd6539865444%_
                           _%hd6539565434%_)
                          (_%g6538765423%_ _%g6538865427%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop6541265486%_
                                               _%target6540965480%_
                                               '()))
                                            (_%g6538765423%_
                                             _%g6538865427%_)))))
                                  (_%g6538765423%_ _%g6538865427%_))))
                          (_%g6538765423%_ _%g6538865427%_))))
                  (_%g6538765423%_ _%g6538865427%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6538765423%_
                                                   _%g6538865427%_))))
                                          (_%g6538765423%_ _%g6538865427%_))))
                                  (_%g6538765423%_ _%g6538865427%_)))))
                      (_%g6538665552%_
                       (list _%unchecked-id65381%_
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                _%signature65383%_))
                             _%signature65383%_
                             _%return65384%_
                             _%body65385%_))))))
          (let* ((_%__stx8298582986%_ _%stx64867%_)
                 (_%g6487964971%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8298582986%_))))
            (let ((_%__kont8298882989%_
                   (lambda (_%L65332%_ _%L65334%_ _%L65335%_ _%L65336%_)
                     (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                          _%L65335%_)
                         (_%make-definition64870%_
                          _%L65336%_
                          _%L65335%_
                          _%L65334%_
                          (foldr (lambda (_%g6536065363%_ _%g6536165366%_)
                                   (cons _%g6536065363%_ _%g6536165366%_))
                                 '()
                                 _%L65332%_))
                         (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L65336%_ _%L65335%_)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'with-procedure-signature)
                                                 (cons (cons '#f
                                                             (cons _%L65334%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '())))
               (foldr (lambda (_%g6536865371%_ _%g6536965374%_)
                        (cons _%g6536865371%_ _%g6536965374%_))
                      '()
                      _%L65332%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                  (_%__kont8299282993%_
                   (lambda (_%L65206%_ _%L65208%_ _%L65209%_)
                     (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                          _%L65208%_)
                         (cons (gx#datum->syntax '#f 'def/c)
                               (cons (cons _%L65209%_ _%L65208%_)
                                     (cons (gx#datum->syntax '#f '=>)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 (foldr (lambda (_%g6522865231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g6522965234%_)
                  (cons _%g6522865231%_ _%g6522965234%_))
                '()
                _%L65206%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (cons (gx#datum->syntax '#f 'def)
                               (cons (cons _%L65209%_ _%L65208%_)
                                     (foldr (lambda (_%g6523665239%_
                                                     _%g6523765242%_)
                                              (cons _%g6523665239%_
                                                    _%g6523765242%_))
                                            '()
                                            _%L65206%_))))))
                  (_%__kont8299682997%_
                   (lambda (_%L65104%_ _%L65106%_ _%L65107%_ _%L65108%_)
                     (cons (gx#datum->syntax '#f 'def/c)
                           (cons (cons _%L65108%_ _%L65107%_)
                                 (cons (cons (gx#datum->syntax '#f 'lambda/c)
                                             (cons _%L65106%_
                                                   (foldr (lambda (_%g6513065133%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g6513165136%_)
                    (cons _%g6513065133%_ _%g6513165136%_))
                  '()
                  _%L65104%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))))
                  (_%__kont8300083001%_
                   (lambda (_%L65008%_ _%L65010%_)
                     (cons (gx#datum->syntax '#f 'def)
                           (cons _%L65010%_ (cons _%L65008%_ '()))))))
              (let* ((_%__match8312283123%_
                      (lambda (_%e6495764978%_
                               _%hd6495864982%_
                               _%tl6495964985%_
                               _%e6496064988%_
                               _%hd6496164992%_
                               _%tl6496264995%_
                               _%e6496364998%_
                               _%hd6496465002%_
                               _%tl6496565005%_)
                        (let ((_%L65008%_ _%hd6496465002%_)
                              (_%L65010%_ _%hd6496164992%_))
                          (if (gx#identifier? _%L65010%_)
                              (_%__kont8300083001%_ _%L65008%_ _%L65010%_)
                              (let ()
                                (declare (not safe))
                                (_%g6487964971%_))))))
                     (_%__match8310283103%_
                      (lambda (_%e6493465034%_
                               _%hd6493565038%_
                               _%tl6493665041%_
                               _%e6493765044%_
                               _%hd6493865048%_
                               _%tl6493965051%_
                               _%e6494065054%_
                               _%hd6494165058%_
                               _%tl6494265061%_
                               _%e6494365064%_
                               _%hd6494465068%_
                               _%tl6494565071%_
                               _%__splice8299882999%_
                               _%target6494665074%_
                               _%tl6494865077%_)
                        (letrec ((_%loop6494965080%_
                                  (lambda (_%hd6494765084%_ _%body6495365087%_)
                                    (if (gx#stx-pair? _%hd6494765084%_)
                                        (let ((_%e6495065090%_
                                               (gx#syntax-e _%hd6494765084%_)))
                                          (let ((_%lp-tl6495265097%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6495065090%_)))
                                                (_%lp-hd6495165094%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6495065090%_))))
                                            (_%loop6494965080%_
                                             _%lp-tl6495265097%_
                                             (cons _%lp-hd6495165094%_
                                                   _%body6495365087%_))))
                                        (let ((_%body6495465100%_
                                               (reverse _%body6495365087%_)))
                                          (_%__kont8299682997%_
                                           _%body6495465100%_
                                           _%tl6494265061%_
                                           _%tl6494565071%_
                                           _%hd6494465068%_))))))
                          (_%loop6494965080%_ _%target6494665074%_ '()))))
                     (_%__match8308883089%_
                      (lambda (_%e6493465034%_
                               _%hd6493565038%_
                               _%tl6493665041%_
                               _%e6493765044%_
                               _%hd6493865048%_
                               _%tl6493965051%_
                               _%e6494065054%_
                               _%hd6494165058%_
                               _%tl6494265061%_)
                        (if (gx#stx-pair? _%hd6494165058%_)
                            (let ((_%e6494365064%_
                                   (gx#syntax-e _%hd6494165058%_)))
                              (let ((_%tl6494565071%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6494365064%_)))
                                    (_%hd6494465068%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6494365064%_))))
                                (if (gx#stx-pair/null? _%tl6493965051%_)
                                    (let ((_%__splice8299882999%_
                                           (gx#syntax-split-splice->vector
                                            _%tl6493965051%_
                                            '0)))
                                      (let ((_%tl6494865077%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8299882999%_
                                                '1)))
                                            (_%target6494665074%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8299882999%_
                                                '0))))
                                        (if (gx#stx-null? _%tl6494865077%_)
                                            (_%__match8310283103%_
                                             _%e6493465034%_
                                             _%hd6493565038%_
                                             _%tl6493665041%_
                                             _%e6493765044%_
                                             _%hd6493865048%_
                                             _%tl6493965051%_
                                             _%e6494065054%_
                                             _%hd6494165058%_
                                             _%tl6494265061%_
                                             _%e6494365064%_
                                             _%hd6494465068%_
                                             _%tl6494565071%_
                                             _%__splice8299882999%_
                                             _%target6494665074%_
                                             _%tl6494865077%_)
                                            (if (gx#stx-pair? _%tl6493965051%_)
                                                (let ((_%e6496364998%_
                                                       (gx#syntax-e
                                                        _%tl6493965051%_)))
                                                  (let ((_%tl6496565005%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e6496364998%_)))
                                                        (_%hd6496465002%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e6496364998%_))))
                                                    (if (gx#stx-null?
                                                         _%tl6496565005%_)
                                                        (_%__match8312283123%_
                                                         _%e6493465034%_
                                                         _%hd6493565038%_
                                                         _%tl6493665041%_
                                                         _%e6493765044%_
                                                         _%hd6493865048%_
                                                         _%tl6493965051%_
                                                         _%e6496364998%_
                                                         _%hd6496465002%_
                                                         _%tl6496565005%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g6487964971%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6487964971%_))))))
                                    (if (gx#stx-pair? _%tl6493965051%_)
                                        (let ((_%e6496364998%_
                                               (gx#syntax-e _%tl6493965051%_)))
                                          (let ((_%tl6496565005%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6496364998%_)))
                                                (_%hd6496465002%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6496364998%_))))
                                            (if (gx#stx-null? _%tl6496565005%_)
                                                (_%__match8312283123%_
                                                 _%e6493465034%_
                                                 _%hd6493565038%_
                                                 _%tl6493665041%_
                                                 _%e6493765044%_
                                                 _%hd6493865048%_
                                                 _%tl6493965051%_
                                                 _%e6496364998%_
                                                 _%hd6496465002%_
                                                 _%tl6496565005%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6487964971%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6487964971%_))))))
                            (if (gx#stx-pair? _%tl6493965051%_)
                                (let ((_%e6496364998%_
                                       (gx#syntax-e _%tl6493965051%_)))
                                  (let ((_%tl6496565005%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6496364998%_)))
                                        (_%hd6496465002%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6496364998%_))))
                                    (if (gx#stx-null? _%tl6496565005%_)
                                        (_%__match8312283123%_
                                         _%e6493465034%_
                                         _%hd6493565038%_
                                         _%tl6493665041%_
                                         _%e6493765044%_
                                         _%hd6493865048%_
                                         _%tl6493965051%_
                                         _%e6496364998%_
                                         _%hd6496465002%_
                                         _%tl6496565005%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6487964971%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g6487964971%_))))))
                     (_%__match8307083071%_
                      (lambda (_%e6491265146%_
                               _%hd6491365150%_
                               _%tl6491465153%_
                               _%e6491565156%_
                               _%hd6491665160%_
                               _%tl6491765163%_
                               _%e6491865166%_
                               _%hd6491965170%_
                               _%tl6492065173%_
                               _%__splice8299482995%_
                               _%target6492165176%_
                               _%tl6492365179%_)
                        (letrec ((_%loop6492465182%_
                                  (lambda (_%hd6492265186%_ _%body6492865189%_)
                                    (if (gx#stx-pair? _%hd6492265186%_)
                                        (let ((_%e6492565192%_
                                               (gx#syntax-e _%hd6492265186%_)))
                                          (let ((_%lp-tl6492765199%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6492565192%_)))
                                                (_%lp-hd6492665196%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6492565192%_))))
                                            (_%loop6492465182%_
                                             _%lp-tl6492765199%_
                                             (cons _%lp-hd6492665196%_
                                                   _%body6492865189%_))))
                                        (let ((_%body6492965202%_
                                               (reverse _%body6492865189%_)))
                                          (let ((_%L65206%_ _%body6492965202%_)
                                                (_%L65208%_ _%tl6492065173%_)
                                                (_%L65209%_ _%hd6491965170%_))
                                            (if (gx#identifier? _%L65209%_)
                                                (_%__kont8299282993%_
                                                 _%L65206%_
                                                 _%L65208%_
                                                 _%L65209%_)
                                                (_%__match8308883089%_
                                                 _%e6491265146%_
                                                 _%hd6491365150%_
                                                 _%tl6491465153%_
                                                 _%e6491565156%_
                                                 _%hd6491665160%_
                                                 _%tl6491765163%_
                                                 _%e6491865166%_
                                                 _%hd6491965170%_
                                                 _%tl6492065173%_))))))))
                          (_%loop6492465182%_ _%target6492165176%_ '()))))
                     (_%__match8306283063%_
                      (lambda (_%e6491265146%_
                               _%hd6491365150%_
                               _%tl6491465153%_
                               _%e6491565156%_
                               _%hd6491665160%_
                               _%tl6491765163%_
                               _%e6491865166%_
                               _%hd6491965170%_
                               _%tl6492065173%_)
                        (if (gx#stx-pair/null? _%tl6491765163%_)
                            (let ((_%__splice8299482995%_
                                   (gx#syntax-split-splice->vector
                                    _%tl6491765163%_
                                    '0)))
                              (let ((_%tl6492365179%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8299482995%_
                                        '1)))
                                    (_%target6492165176%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8299482995%_
                                        '0))))
                                (if (gx#stx-null? _%tl6492365179%_)
                                    (_%__match8307083071%_
                                     _%e6491265146%_
                                     _%hd6491365150%_
                                     _%tl6491465153%_
                                     _%e6491565156%_
                                     _%hd6491665160%_
                                     _%tl6491765163%_
                                     _%e6491865166%_
                                     _%hd6491965170%_
                                     _%tl6492065173%_
                                     _%__splice8299482995%_
                                     _%target6492165176%_
                                     _%tl6492365179%_)
                                    (if (gx#stx-pair? _%hd6491965170%_)
                                        (let ((_%e6494365064%_
                                               (gx#syntax-e _%hd6491965170%_)))
                                          (let ((_%tl6494565071%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6494365064%_)))
                                                (_%hd6494465068%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6494365064%_))))
                                            (if (gx#stx-pair? _%tl6491765163%_)
                                                (let ((_%e6496364998%_
                                                       (gx#syntax-e
                                                        _%tl6491765163%_)))
                                                  (let ((_%tl6496565005%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e6496364998%_)))
                                                        (_%hd6496465002%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e6496364998%_))))
                                                    (if (gx#stx-null?
                                                         _%tl6496565005%_)
                                                        (_%__match8312283123%_
                                                         _%e6491265146%_
                                                         _%hd6491365150%_
                                                         _%tl6491465153%_
                                                         _%e6491565156%_
                                                         _%hd6491665160%_
                                                         _%tl6491765163%_
                                                         _%e6496364998%_
                                                         _%hd6496465002%_
                                                         _%tl6496565005%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g6487964971%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6487964971%_)))))
                                        (if (gx#stx-pair? _%tl6491765163%_)
                                            (let ((_%e6496364998%_
                                                   (gx#syntax-e
                                                    _%tl6491765163%_)))
                                              (let ((_%tl6496565005%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6496364998%_)))
                                                    (_%hd6496465002%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6496364998%_))))
                                                (if (gx#stx-null?
                                                     _%tl6496565005%_)
                                                    (_%__match8312283123%_
                                                     _%e6491265146%_
                                                     _%hd6491365150%_
                                                     _%tl6491465153%_
                                                     _%e6491565156%_
                                                     _%hd6491665160%_
                                                     _%tl6491765163%_
                                                     _%e6496364998%_
                                                     _%hd6496465002%_
                                                     _%tl6496565005%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6487964971%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6487964971%_)))))))
                            (if (gx#stx-pair? _%hd6491965170%_)
                                (let ((_%e6494365064%_
                                       (gx#syntax-e _%hd6491965170%_)))
                                  (let ((_%tl6494565071%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6494365064%_)))
                                        (_%hd6494465068%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6494365064%_))))
                                    (if (gx#stx-pair? _%tl6491765163%_)
                                        (let ((_%e6496364998%_
                                               (gx#syntax-e _%tl6491765163%_)))
                                          (let ((_%tl6496565005%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6496364998%_)))
                                                (_%hd6496465002%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6496364998%_))))
                                            (if (gx#stx-null? _%tl6496565005%_)
                                                (_%__match8312283123%_
                                                 _%e6491265146%_
                                                 _%hd6491365150%_
                                                 _%tl6491465153%_
                                                 _%e6491565156%_
                                                 _%hd6491665160%_
                                                 _%tl6491765163%_
                                                 _%e6496364998%_
                                                 _%hd6496465002%_
                                                 _%tl6496565005%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6487964971%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6487964971%_)))))
                                (if (gx#stx-pair? _%tl6491765163%_)
                                    (let ((_%e6496364998%_
                                           (gx#syntax-e _%tl6491765163%_)))
                                      (let ((_%tl6496565005%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6496364998%_)))
                                            (_%hd6496465002%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6496364998%_))))
                                        (if (gx#stx-null? _%tl6496565005%_)
                                            (_%__match8312283123%_
                                             _%e6491265146%_
                                             _%hd6491365150%_
                                             _%tl6491465153%_
                                             _%e6491565156%_
                                             _%hd6491665160%_
                                             _%tl6491765163%_
                                             _%e6496364998%_
                                             _%hd6496465002%_
                                             _%tl6496565005%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g6487964971%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g6487964971%_)))))))
                     (_%__match8304483045%_
                      (lambda (_%e6488565252%_
                               _%hd6488665256%_
                               _%tl6488765259%_
                               _%e6488865262%_
                               _%hd6488965266%_
                               _%tl6489065269%_
                               _%e6489165272%_
                               _%hd6489265276%_
                               _%tl6489365279%_
                               _%e6489465282%_
                               _%hd6489565286%_
                               _%tl6489665289%_
                               _%e6489765292%_
                               _%hd6489865296%_
                               _%tl6489965299%_
                               _%__splice8299082991%_
                               _%target6490065302%_
                               _%tl6490265305%_)
                        (letrec ((_%loop6490365308%_
                                  (lambda (_%hd6490165312%_ _%body6490765315%_)
                                    (if (gx#stx-pair? _%hd6490165312%_)
                                        (let ((_%e6490465318%_
                                               (gx#syntax-e _%hd6490165312%_)))
                                          (let ((_%lp-tl6490665325%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6490465318%_)))
                                                (_%lp-hd6490565322%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6490465318%_))))
                                            (_%loop6490365308%_
                                             _%lp-tl6490665325%_
                                             (cons _%lp-hd6490565322%_
                                                   _%body6490765315%_))))
                                        (let ((_%body6490865328%_
                                               (reverse _%body6490765315%_)))
                                          (let ((_%L65332%_ _%body6490865328%_)
                                                (_%L65334%_ _%hd6489865296%_)
                                                (_%L65335%_ _%tl6489365279%_)
                                                (_%L65336%_ _%hd6489265276%_))
                                            (if (gx#identifier? _%L65336%_)
                                                (_%__kont8298882989%_
                                                 _%L65332%_
                                                 _%L65334%_
                                                 _%L65335%_
                                                 _%L65336%_)
                                                (_%__match8306283063%_
                                                 _%e6488565252%_
                                                 _%hd6488665256%_
                                                 _%tl6488765259%_
                                                 _%e6488865262%_
                                                 _%hd6488965266%_
                                                 _%tl6489065269%_
                                                 _%e6489165272%_
                                                 _%hd6489265276%_
                                                 _%tl6489365279%_))))))))
                          (_%loop6490365308%_ _%target6490065302%_ '())))))
                (if (gx#stx-pair? _%__stx8298582986%_)
                    (let ((_%e6488565252%_ (gx#syntax-e _%__stx8298582986%_)))
                      (let ((_%tl6488765259%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6488565252%_)))
                            (_%hd6488665256%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6488565252%_))))
                        (if (gx#stx-pair? _%tl6488765259%_)
                            (let ((_%e6488865262%_
                                   (gx#syntax-e _%tl6488765259%_)))
                              (let ((_%tl6489065269%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6488865262%_)))
                                    (_%hd6488965266%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6488865262%_))))
                                (if (gx#stx-pair? _%hd6488965266%_)
                                    (let ((_%e6489165272%_
                                           (gx#syntax-e _%hd6488965266%_)))
                                      (let ((_%tl6489365279%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6489165272%_)))
                                            (_%hd6489265276%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6489165272%_))))
                                        (if (gx#stx-pair? _%tl6489065269%_)
                                            (let ((_%e6489465282%_
                                                   (gx#syntax-e
                                                    _%tl6489065269%_)))
                                              (let ((_%tl6489665289%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6489465282%_)))
                                                    (_%hd6489565286%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6489465282%_))))
                                                (if (gx#identifier?
                                                     _%hd6489565286%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypedDefinitions[1]#_g85131_|
                                                         _%hd6489565286%_)
                                                        (if (gx#stx-pair?
                                                             _%tl6489665289%_)
                                                            (let ((_%e6489765292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl6489665289%_)))
                      (let ((_%tl6489965299%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6489765292%_)))
                            (_%hd6489865296%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6489765292%_))))
                        (if (gx#stx-pair/null? _%tl6489965299%_)
                            (let ((_%__splice8299082991%_
                                   (gx#syntax-split-splice->vector
                                    _%tl6489965299%_
                                    '0)))
                              (let ((_%tl6490265305%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8299082991%_
                                        '1)))
                                    (_%target6490065302%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8299082991%_
                                        '0))))
                                (if (gx#stx-null? _%tl6490265305%_)
                                    (_%__match8304483045%_
                                     _%e6488565252%_
                                     _%hd6488665256%_
                                     _%tl6488765259%_
                                     _%e6488865262%_
                                     _%hd6488965266%_
                                     _%tl6489065269%_
                                     _%e6489165272%_
                                     _%hd6489265276%_
                                     _%tl6489365279%_
                                     _%e6489465282%_
                                     _%hd6489565286%_
                                     _%tl6489665289%_
                                     _%e6489765292%_
                                     _%hd6489865296%_
                                     _%tl6489965299%_
                                     _%__splice8299082991%_
                                     _%target6490065302%_
                                     _%tl6490265305%_)
                                    (if (gx#stx-pair/null? _%tl6489065269%_)
                                        (let ((_%__splice8299482995%_
                                               (gx#syntax-split-splice->vector
                                                _%tl6489065269%_
                                                '0)))
                                          (let ((_%tl6492365179%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice8299482995%_
                                                    '1)))
                                                (_%target6492165176%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice8299482995%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl6492365179%_)
                                                (_%__match8307083071%_
                                                 _%e6488565252%_
                                                 _%hd6488665256%_
                                                 _%tl6488765259%_
                                                 _%e6488865262%_
                                                 _%hd6488965266%_
                                                 _%tl6489065269%_
                                                 _%e6489165272%_
                                                 _%hd6489265276%_
                                                 _%tl6489365279%_
                                                 _%__splice8299482995%_
                                                 _%target6492165176%_
                                                 _%tl6492365179%_)
                                                (if (gx#stx-pair?
                                                     _%hd6489265276%_)
                                                    (let ((_%e6494365064%_
                                                           (gx#syntax-e
                                                            _%hd6489265276%_)))
                                                      (let ((_%tl6494565071%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6494365064%_)))
                    (_%hd6494465068%_
                     (let () (declare (not safe)) (##car _%e6494365064%_))))
                (let () (declare (not safe)) (_%g6487964971%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6487964971%_))))))
                                        (if (gx#stx-pair? _%hd6489265276%_)
                                            (let ((_%e6494365064%_
                                                   (gx#syntax-e
                                                    _%hd6489265276%_)))
                                              (let ((_%tl6494565071%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6494365064%_)))
                                                    (_%hd6494465068%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6494365064%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6487964971%_))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6487964971%_)))))))
                            (if (gx#stx-pair/null? _%tl6489065269%_)
                                (let ((_%__splice8299482995%_
                                       (gx#syntax-split-splice->vector
                                        _%tl6489065269%_
                                        '0)))
                                  (let ((_%tl6492365179%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8299482995%_
                                            '1)))
                                        (_%target6492165176%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8299482995%_
                                            '0))))
                                    (if (gx#stx-null? _%tl6492365179%_)
                                        (_%__match8307083071%_
                                         _%e6488565252%_
                                         _%hd6488665256%_
                                         _%tl6488765259%_
                                         _%e6488865262%_
                                         _%hd6488965266%_
                                         _%tl6489065269%_
                                         _%e6489165272%_
                                         _%hd6489265276%_
                                         _%tl6489365279%_
                                         _%__splice8299482995%_
                                         _%target6492165176%_
                                         _%tl6492365179%_)
                                        (if (gx#stx-pair? _%hd6489265276%_)
                                            (let ((_%e6494365064%_
                                                   (gx#syntax-e
                                                    _%hd6489265276%_)))
                                              (let ((_%tl6494565071%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6494365064%_)))
                                                    (_%hd6494465068%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6494365064%_))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6487964971%_))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6487964971%_))))))
                                (if (gx#stx-pair? _%hd6489265276%_)
                                    (let ((_%e6494365064%_
                                           (gx#syntax-e _%hd6489265276%_)))
                                      (let ((_%tl6494565071%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6494365064%_)))
                                            (_%hd6494465068%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6494365064%_))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6487964971%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g6487964971%_)))))))
                    (if (gx#stx-pair/null? _%tl6489065269%_)
                        (let ((_%__splice8299482995%_
                               (gx#syntax-split-splice->vector
                                _%tl6489065269%_
                                '0)))
                          (let ((_%tl6492365179%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8299482995%_ '1)))
                                (_%target6492165176%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8299482995%_ '0))))
                            (if (gx#stx-null? _%tl6492365179%_)
                                (_%__match8307083071%_
                                 _%e6488565252%_
                                 _%hd6488665256%_
                                 _%tl6488765259%_
                                 _%e6488865262%_
                                 _%hd6488965266%_
                                 _%tl6489065269%_
                                 _%e6489165272%_
                                 _%hd6489265276%_
                                 _%tl6489365279%_
                                 _%__splice8299482995%_
                                 _%target6492165176%_
                                 _%tl6492365179%_)
                                (if (gx#stx-pair? _%hd6489265276%_)
                                    (let ((_%e6494365064%_
                                           (gx#syntax-e _%hd6489265276%_)))
                                      (let ((_%tl6494565071%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6494365064%_)))
                                            (_%hd6494465068%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6494365064%_))))
                                        (if (gx#stx-null? _%tl6489665289%_)
                                            (_%__match8312283123%_
                                             _%e6488565252%_
                                             _%hd6488665256%_
                                             _%tl6488765259%_
                                             _%e6488865262%_
                                             _%hd6488965266%_
                                             _%tl6489065269%_
                                             _%e6489465282%_
                                             _%hd6489565286%_
                                             _%tl6489665289%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g6487964971%_)))))
                                    (if (gx#stx-null? _%tl6489665289%_)
                                        (_%__match8312283123%_
                                         _%e6488565252%_
                                         _%hd6488665256%_
                                         _%tl6488765259%_
                                         _%e6488865262%_
                                         _%hd6488965266%_
                                         _%tl6489065269%_
                                         _%e6489465282%_
                                         _%hd6489565286%_
                                         _%tl6489665289%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6487964971%_)))))))
                        (if (gx#stx-pair? _%hd6489265276%_)
                            (let ((_%e6494365064%_
                                   (gx#syntax-e _%hd6489265276%_)))
                              (let ((_%tl6494565071%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6494365064%_)))
                                    (_%hd6494465068%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6494365064%_))))
                                (if (gx#stx-null? _%tl6489665289%_)
                                    (_%__match8312283123%_
                                     _%e6488565252%_
                                     _%hd6488665256%_
                                     _%tl6488765259%_
                                     _%e6488865262%_
                                     _%hd6488965266%_
                                     _%tl6489065269%_
                                     _%e6489465282%_
                                     _%hd6489565286%_
                                     _%tl6489665289%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g6487964971%_)))))
                            (if (gx#stx-null? _%tl6489665289%_)
                                (_%__match8312283123%_
                                 _%e6488565252%_
                                 _%hd6488665256%_
                                 _%tl6488765259%_
                                 _%e6488865262%_
                                 _%hd6488965266%_
                                 _%tl6489065269%_
                                 _%e6489465282%_
                                 _%hd6489565286%_
                                 _%tl6489665289%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g6487964971%_))))))
                (if (gx#stx-pair/null? _%tl6489065269%_)
                    (let ((_%__splice8299482995%_
                           (gx#syntax-split-splice->vector
                            _%tl6489065269%_
                            '0)))
                      (let ((_%tl6492365179%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8299482995%_ '1)))
                            (_%target6492165176%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8299482995%_ '0))))
                        (if (gx#stx-null? _%tl6492365179%_)
                            (_%__match8307083071%_
                             _%e6488565252%_
                             _%hd6488665256%_
                             _%tl6488765259%_
                             _%e6488865262%_
                             _%hd6488965266%_
                             _%tl6489065269%_
                             _%e6489165272%_
                             _%hd6489265276%_
                             _%tl6489365279%_
                             _%__splice8299482995%_
                             _%target6492165176%_
                             _%tl6492365179%_)
                            (if (gx#stx-pair? _%hd6489265276%_)
                                (let ((_%e6494365064%_
                                       (gx#syntax-e _%hd6489265276%_)))
                                  (let ((_%tl6494565071%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6494365064%_)))
                                        (_%hd6494465068%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6494365064%_))))
                                    (if (gx#stx-null? _%tl6489665289%_)
                                        (_%__match8312283123%_
                                         _%e6488565252%_
                                         _%hd6488665256%_
                                         _%tl6488765259%_
                                         _%e6488865262%_
                                         _%hd6488965266%_
                                         _%tl6489065269%_
                                         _%e6489465282%_
                                         _%hd6489565286%_
                                         _%tl6489665289%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6487964971%_)))))
                                (if (gx#stx-null? _%tl6489665289%_)
                                    (_%__match8312283123%_
                                     _%e6488565252%_
                                     _%hd6488665256%_
                                     _%tl6488765259%_
                                     _%e6488865262%_
                                     _%hd6488965266%_
                                     _%tl6489065269%_
                                     _%e6489465282%_
                                     _%hd6489565286%_
                                     _%tl6489665289%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g6487964971%_)))))))
                    (if (gx#stx-pair? _%hd6489265276%_)
                        (let ((_%e6494365064%_ (gx#syntax-e _%hd6489265276%_)))
                          (let ((_%tl6494565071%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6494365064%_)))
                                (_%hd6494465068%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6494365064%_))))
                            (if (gx#stx-null? _%tl6489665289%_)
                                (_%__match8312283123%_
                                 _%e6488565252%_
                                 _%hd6488665256%_
                                 _%tl6488765259%_
                                 _%e6488865262%_
                                 _%hd6488965266%_
                                 _%tl6489065269%_
                                 _%e6489465282%_
                                 _%hd6489565286%_
                                 _%tl6489665289%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g6487964971%_)))))
                        (if (gx#stx-null? _%tl6489665289%_)
                            (_%__match8312283123%_
                             _%e6488565252%_
                             _%hd6488665256%_
                             _%tl6488765259%_
                             _%e6488865262%_
                             _%hd6488965266%_
                             _%tl6489065269%_
                             _%e6489465282%_
                             _%hd6489565286%_
                             _%tl6489665289%_)
                            (let () (declare (not safe)) (_%g6487964971%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%tl6489065269%_)
                                                        (let ((_%__splice8299482995%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl6489065269%_
                                                                '0)))
                                                          (let ((_%tl6492365179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8299482995%_ '1)))
                        (_%target6492165176%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8299482995%_ '0))))
                    (if (gx#stx-null? _%tl6492365179%_)
                        (_%__match8307083071%_
                         _%e6488565252%_
                         _%hd6488665256%_
                         _%tl6488765259%_
                         _%e6488865262%_
                         _%hd6488965266%_
                         _%tl6489065269%_
                         _%e6489165272%_
                         _%hd6489265276%_
                         _%tl6489365279%_
                         _%__splice8299482995%_
                         _%target6492165176%_
                         _%tl6492365179%_)
                        (if (gx#stx-pair? _%hd6489265276%_)
                            (let ((_%e6494365064%_
                                   (gx#syntax-e _%hd6489265276%_)))
                              (let ((_%tl6494565071%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6494365064%_)))
                                    (_%hd6494465068%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6494365064%_))))
                                (if (gx#stx-null? _%tl6489665289%_)
                                    (_%__match8312283123%_
                                     _%e6488565252%_
                                     _%hd6488665256%_
                                     _%tl6488765259%_
                                     _%e6488865262%_
                                     _%hd6488965266%_
                                     _%tl6489065269%_
                                     _%e6489465282%_
                                     _%hd6489565286%_
                                     _%tl6489665289%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g6487964971%_)))))
                            (if (gx#stx-null? _%tl6489665289%_)
                                (_%__match8312283123%_
                                 _%e6488565252%_
                                 _%hd6488665256%_
                                 _%tl6488765259%_
                                 _%e6488865262%_
                                 _%hd6488965266%_
                                 _%tl6489065269%_
                                 _%e6489465282%_
                                 _%hd6489565286%_
                                 _%tl6489665289%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g6487964971%_)))))))
                (if (gx#stx-pair? _%hd6489265276%_)
                    (let ((_%e6494365064%_ (gx#syntax-e _%hd6489265276%_)))
                      (let ((_%tl6494565071%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6494365064%_)))
                            (_%hd6494465068%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6494365064%_))))
                        (if (gx#stx-null? _%tl6489665289%_)
                            (_%__match8312283123%_
                             _%e6488565252%_
                             _%hd6488665256%_
                             _%tl6488765259%_
                             _%e6488865262%_
                             _%hd6488965266%_
                             _%tl6489065269%_
                             _%e6489465282%_
                             _%hd6489565286%_
                             _%tl6489665289%_)
                            (let () (declare (not safe)) (_%g6487964971%_)))))
                    (if (gx#stx-null? _%tl6489665289%_)
                        (_%__match8312283123%_
                         _%e6488565252%_
                         _%hd6488665256%_
                         _%tl6488765259%_
                         _%e6488865262%_
                         _%hd6488965266%_
                         _%tl6489065269%_
                         _%e6489465282%_
                         _%hd6489565286%_
                         _%tl6489665289%_)
                        (let () (declare (not safe)) (_%g6487964971%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-pair/null?
                                                 _%tl6489065269%_)
                                                (let ((_%__splice8299482995%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl6489065269%_
                                                        '0)))
                                                  (let ((_%tl6492365179%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8299482995%_
                                                            '1)))
                                                        (_%target6492165176%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8299482995%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl6492365179%_)
                                                        (_%__match8307083071%_
                                                         _%e6488565252%_
                                                         _%hd6488665256%_
                                                         _%tl6488765259%_
                                                         _%e6488865262%_
                                                         _%hd6488965266%_
                                                         _%tl6489065269%_
                                                         _%e6489165272%_
                                                         _%hd6489265276%_
                                                         _%tl6489365279%_
                                                         _%__splice8299482995%_
                                                         _%target6492165176%_
                                                         _%tl6492365179%_)
                                                        (if (gx#stx-pair?
                                                             _%hd6489265276%_)
                                                            (let ((_%e6494365064%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd6489265276%_)))
                      (let ((_%tl6494565071%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6494365064%_)))
                            (_%hd6494465068%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6494365064%_))))
                        (let () (declare (not safe)) (_%g6487964971%_))))
                    (let () (declare (not safe)) (_%g6487964971%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%hd6489265276%_)
                                                    (let ((_%e6494365064%_
                                                           (gx#syntax-e
                                                            _%hd6489265276%_)))
                                                      (let ((_%tl6494565071%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6494365064%_)))
                    (_%hd6494465068%_
                     (let () (declare (not safe)) (##car _%e6494365064%_))))
                (let () (declare (not safe)) (_%g6487964971%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6487964971%_)))))))
                                    (if (gx#stx-pair? _%tl6489065269%_)
                                        (let ((_%e6496364998%_
                                               (gx#syntax-e _%tl6489065269%_)))
                                          (let ((_%tl6496565005%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6496364998%_)))
                                                (_%hd6496465002%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6496364998%_))))
                                            (if (gx#stx-null? _%tl6496565005%_)
                                                (_%__match8312283123%_
                                                 _%e6488565252%_
                                                 _%hd6488665256%_
                                                 _%tl6488765259%_
                                                 _%e6488865262%_
                                                 _%hd6488965266%_
                                                 _%tl6489065269%_
                                                 _%e6496364998%_
                                                 _%hd6496465002%_
                                                 _%tl6496565005%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6487964971%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6487964971%_))))))
                            (let () (declare (not safe)) (_%g6487964971%_)))))
                    (let () (declare (not safe)) (_%g6487964971%_)))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#with-procedure-signature|
      (lambda (_%stx66048%_)
        (let* ((_%__stx8312583126%_ _%stx66048%_)
               (_%g6605266115%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8312583126%_))))
          (let ((_%__kont8312883129%_
                 (lambda (_%L66366%_ _%L66368%_)
                   (let* ((_%g6639366401%_
                           (lambda (_%g6639466397%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6639466397%_)))
                          (_%g6639266428%_
                           (lambda (_%g6639466405%_)
                             ((lambda (_%L66408%_)
                                (cons (gx#datum->syntax '#f 'begin-annotation)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '@type.signature)
                                                  (cons 'return:
                                                        (cons _%L66408%_ '())))
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons '()
                                                              (foldr (lambda (_%g6641966422%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g6642066425%_)
                               (cons _%g6641966422%_ _%g6642066425%_))
                             '()
                             _%L66366%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                              _%g6639466405%_))))
                     (_%g6639266428%_
                      (let ()
                        (declare (not safe))
                        (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                         _%stx66048%_
                         _%L66368%_))))))
                (_%__kont8313283133%_
                 (lambda (_%L66202%_ _%L66204%_ _%L66205%_ _%L66206%_)
                   (let* ((_%g6623266240%_
                           (lambda (_%g6623366236%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6623366236%_)))
                          (_%g6623166267%_
                           (lambda (_%g6623366244%_)
                             ((lambda (_%L66247%_)
                                (cons (gx#datum->syntax '#f 'begin-annotation)
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '@type.signature)
                                                  _%L66247%_)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons '()
                                                              (foldr (lambda (_%g6625866261%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g6625966264%_)
                               (cons _%g6625866261%_ _%g6625966264%_))
                             '()
                             _%L66202%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))
                              _%g6623366244%_))))
                     (_%g6623166267%_
                      (let ()
                        (declare (not safe))
                        (|gerbil/core/contract~Interface[1]#make-procedure-lambda-signature|
                         _%stx66048%_
                         _%L66206%_
                         _%L66205%_
                         _%L66204%_)))))))
            (let* ((_%__match8322883229%_
                    (lambda (_%e6608666122%_
                             _%hd6608766126%_
                             _%tl6608866129%_
                             _%e6608966132%_
                             _%hd6609066136%_
                             _%tl6609166139%_
                             _%e6609266142%_
                             _%hd6609366146%_
                             _%tl6609466149%_
                             _%e6609566152%_
                             _%hd6609666156%_
                             _%tl6609766159%_
                             _%e6609866162%_
                             _%hd6609966166%_
                             _%tl6610066169%_
                             _%__splice8313483135%_
                             _%target6610166172%_
                             _%tl6610366175%_)
                      (letrec ((_%loop6610466178%_
                                (lambda (_%hd6610266182%_ _%body6610866185%_)
                                  (if (gx#stx-pair? _%hd6610266182%_)
                                      (let ((_%e6610566188%_
                                             (gx#syntax-e _%hd6610266182%_)))
                                        (let ((_%lp-tl6610766195%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6610566188%_)))
                                              (_%lp-hd6610666192%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6610566188%_))))
                                          (_%loop6610466178%_
                                           _%lp-tl6610766195%_
                                           (cons _%lp-hd6610666192%_
                                                 _%body6610866185%_))))
                                      (let ((_%body6610966198%_
                                             (reverse _%body6610866185%_)))
                                        (_%__kont8313283133%_
                                         _%body6610966198%_
                                         _%hd6609966166%_
                                         _%hd6609666156%_
                                         _%hd6609366146%_))))))
                        (_%loop6610466178%_ _%target6610166172%_ '()))))
                   (_%__match8318883189%_
                    (lambda (_%e6605666278%_
                             _%hd6605766282%_
                             _%tl6605866285%_
                             _%e6605966288%_
                             _%hd6606066292%_
                             _%tl6606166295%_
                             _%e6606266298%_
                             _%hd6606366302%_
                             _%tl6606466305%_
                             _%e6606566308%_
                             _%e6606666312%_
                             _%hd6606766316%_
                             _%tl6606866319%_
                             _%e6606966322%_
                             _%hd6607066326%_
                             _%tl6607166329%_
                             _%e6607266332%_
                             _%__splice8313083131%_
                             _%target6607366336%_
                             _%tl6607566339%_)
                      (letrec ((_%loop6607666342%_
                                (lambda (_%hd6607466346%_ _%body6608066349%_)
                                  (if (gx#stx-pair? _%hd6607466346%_)
                                      (let ((_%e6607766352%_
                                             (gx#syntax-e _%hd6607466346%_)))
                                        (let ((_%lp-tl6607966359%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6607766352%_)))
                                              (_%lp-hd6607866356%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6607766352%_))))
                                          (_%loop6607666342%_
                                           _%lp-tl6607966359%_
                                           (cons _%lp-hd6607866356%_
                                                 _%body6608066349%_))))
                                      (let ((_%body6608166362%_
                                             (reverse _%body6608066349%_)))
                                        (_%__kont8312883129%_
                                         _%body6608166362%_
                                         _%hd6606766316%_))))))
                        (_%loop6607666342%_ _%target6607366336%_ '())))))
              (if (gx#stx-pair? _%__stx8312583126%_)
                  (let ((_%e6605666278%_ (gx#syntax-e _%__stx8312583126%_)))
                    (let ((_%tl6605866285%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6605666278%_)))
                          (_%hd6605766282%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6605666278%_))))
                      (if (gx#stx-pair? _%tl6605866285%_)
                          (let ((_%e6605966288%_
                                 (gx#syntax-e _%tl6605866285%_)))
                            (let ((_%tl6606166295%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6605966288%_)))
                                  (_%hd6606066292%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6605966288%_))))
                              (if (gx#stx-pair? _%hd6606066292%_)
                                  (let ((_%e6606266298%_
                                         (gx#syntax-e _%hd6606066292%_)))
                                    (let ((_%tl6606466305%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6606266298%_)))
                                          (_%hd6606366302%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6606266298%_))))
                                      (if (gx#stx-datum? _%hd6606366302%_)
                                          (let ((_%e6606566308%_
                                                 (gx#stx-e _%hd6606366302%_)))
                                            (if (equal? _%e6606566308%_ '#f)
                                                (if (gx#stx-pair?
                                                     _%tl6606466305%_)
                                                    (let ((_%e6606666312%_
                                                           (gx#syntax-e
                                                            _%tl6606466305%_)))
                                                      (let ((_%tl6606866319%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6606666312%_)))
                    (_%hd6606766316%_
                     (let () (declare (not safe)) (##car _%e6606666312%_))))
                (if (gx#stx-pair? _%tl6606866319%_)
                    (let ((_%e6606966322%_ (gx#syntax-e _%tl6606866319%_)))
                      (let ((_%tl6607166329%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6606966322%_)))
                            (_%hd6607066326%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6606966322%_))))
                        (if (gx#stx-datum? _%hd6607066326%_)
                            (let ((_%e6607266332%_
                                   (gx#stx-e _%hd6607066326%_)))
                              (if (equal? _%e6607266332%_ '#f)
                                  (if (gx#stx-null? _%tl6607166329%_)
                                      (if (gx#stx-pair/null? _%tl6606166295%_)
                                          (let ((_%__splice8313083131%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl6606166295%_
                                                  '0)))
                                            (let ((_%tl6607566339%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8313083131%_
                                                      '1)))
                                                  (_%target6607366336%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8313083131%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6607566339%_)
                                                  (_%__match8318883189%_
                                                   _%e6605666278%_
                                                   _%hd6605766282%_
                                                   _%tl6605866285%_
                                                   _%e6605966288%_
                                                   _%hd6606066292%_
                                                   _%tl6606166295%_
                                                   _%e6606266298%_
                                                   _%hd6606366302%_
                                                   _%tl6606466305%_
                                                   _%e6606566308%_
                                                   _%e6606666312%_
                                                   _%hd6606766316%_
                                                   _%tl6606866319%_
                                                   _%e6606966322%_
                                                   _%hd6607066326%_
                                                   _%tl6607166329%_
                                                   _%e6607266332%_
                                                   _%__splice8313083131%_
                                                   _%target6607366336%_
                                                   _%tl6607566339%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6605266115%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6605266115%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6605266115%_)))
                                  (if (gx#stx-null? _%tl6607166329%_)
                                      (if (gx#stx-pair/null? _%tl6606166295%_)
                                          (let ((_%__splice8313483135%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl6606166295%_
                                                  '0)))
                                            (let ((_%tl6610366175%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8313483135%_
                                                      '1)))
                                                  (_%target6610166172%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8313483135%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6610366175%_)
                                                  (_%__match8322883229%_
                                                   _%e6605666278%_
                                                   _%hd6605766282%_
                                                   _%tl6605866285%_
                                                   _%e6605966288%_
                                                   _%hd6606066292%_
                                                   _%tl6606166295%_
                                                   _%e6606266298%_
                                                   _%hd6606366302%_
                                                   _%tl6606466305%_
                                                   _%e6606666312%_
                                                   _%hd6606766316%_
                                                   _%tl6606866319%_
                                                   _%e6606966322%_
                                                   _%hd6607066326%_
                                                   _%tl6607166329%_
                                                   _%__splice8313483135%_
                                                   _%target6610166172%_
                                                   _%tl6610366175%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6605266115%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6605266115%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6605266115%_)))))
                            (if (gx#stx-null? _%tl6607166329%_)
                                (if (gx#stx-pair/null? _%tl6606166295%_)
                                    (let ((_%__splice8313483135%_
                                           (gx#syntax-split-splice->vector
                                            _%tl6606166295%_
                                            '0)))
                                      (let ((_%tl6610366175%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8313483135%_
                                                '1)))
                                            (_%target6610166172%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice8313483135%_
                                                '0))))
                                        (if (gx#stx-null? _%tl6610366175%_)
                                            (_%__match8322883229%_
                                             _%e6605666278%_
                                             _%hd6605766282%_
                                             _%tl6605866285%_
                                             _%e6605966288%_
                                             _%hd6606066292%_
                                             _%tl6606166295%_
                                             _%e6606266298%_
                                             _%hd6606366302%_
                                             _%tl6606466305%_
                                             _%e6606666312%_
                                             _%hd6606766316%_
                                             _%tl6606866319%_
                                             _%e6606966322%_
                                             _%hd6607066326%_
                                             _%tl6607166329%_
                                             _%__splice8313483135%_
                                             _%target6610166172%_
                                             _%tl6610366175%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g6605266115%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g6605266115%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g6605266115%_))))))
                    (let () (declare (not safe)) (_%g6605266115%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6605266115%_)))
                                                (if (gx#stx-pair?
                                                     _%tl6606466305%_)
                                                    (let ((_%e6609566152%_
                                                           (gx#syntax-e
                                                            _%tl6606466305%_)))
                                                      (let ((_%tl6609766159%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6609566152%_)))
                    (_%hd6609666156%_
                     (let () (declare (not safe)) (##car _%e6609566152%_))))
                (if (gx#stx-pair? _%tl6609766159%_)
                    (let ((_%e6609866162%_ (gx#syntax-e _%tl6609766159%_)))
                      (let ((_%tl6610066169%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6609866162%_)))
                            (_%hd6609966166%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6609866162%_))))
                        (if (gx#stx-null? _%tl6610066169%_)
                            (if (gx#stx-pair/null? _%tl6606166295%_)
                                (let ((_%__splice8313483135%_
                                       (gx#syntax-split-splice->vector
                                        _%tl6606166295%_
                                        '0)))
                                  (let ((_%tl6610366175%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8313483135%_
                                            '1)))
                                        (_%target6610166172%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8313483135%_
                                            '0))))
                                    (if (gx#stx-null? _%tl6610366175%_)
                                        (_%__match8322883229%_
                                         _%e6605666278%_
                                         _%hd6605766282%_
                                         _%tl6605866285%_
                                         _%e6605966288%_
                                         _%hd6606066292%_
                                         _%tl6606166295%_
                                         _%e6606266298%_
                                         _%hd6606366302%_
                                         _%tl6606466305%_
                                         _%e6609566152%_
                                         _%hd6609666156%_
                                         _%tl6609766159%_
                                         _%e6609866162%_
                                         _%hd6609966166%_
                                         _%tl6610066169%_
                                         _%__splice8313483135%_
                                         _%target6610166172%_
                                         _%tl6610366175%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6605266115%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g6605266115%_)))
                            (let () (declare (not safe)) (_%g6605266115%_)))))
                    (let () (declare (not safe)) (_%g6605266115%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6605266115%_)))))
                                          (if (gx#stx-pair? _%tl6606466305%_)
                                              (let ((_%e6609566152%_
                                                     (gx#syntax-e
                                                      _%tl6606466305%_)))
                                                (let ((_%tl6609766159%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6609566152%_)))
                                                      (_%hd6609666156%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6609566152%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl6609766159%_)
                                                      (let ((_%e6609866162%_
                                                             (gx#syntax-e
                                                              _%tl6609766159%_)))
                                                        (let ((_%tl6610066169%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6609866162%_)))
                      (_%hd6609966166%_
                       (let () (declare (not safe)) (##car _%e6609866162%_))))
                  (if (gx#stx-null? _%tl6610066169%_)
                      (if (gx#stx-pair/null? _%tl6606166295%_)
                          (let ((_%__splice8313483135%_
                                 (gx#syntax-split-splice->vector
                                  _%tl6606166295%_
                                  '0)))
                            (let ((_%tl6610366175%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8313483135%_ '1)))
                                  (_%target6610166172%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8313483135%_
                                      '0))))
                              (if (gx#stx-null? _%tl6610366175%_)
                                  (_%__match8322883229%_
                                   _%e6605666278%_
                                   _%hd6605766282%_
                                   _%tl6605866285%_
                                   _%e6605966288%_
                                   _%hd6606066292%_
                                   _%tl6606166295%_
                                   _%e6606266298%_
                                   _%hd6606366302%_
                                   _%tl6606466305%_
                                   _%e6609566152%_
                                   _%hd6609666156%_
                                   _%tl6609766159%_
                                   _%e6609866162%_
                                   _%hd6609966166%_
                                   _%tl6610066169%_
                                   _%__splice8313483135%_
                                   _%target6610166172%_
                                   _%tl6610366175%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6605266115%_)))))
                          (let () (declare (not safe)) (_%g6605266115%_)))
                      (let () (declare (not safe)) (_%g6605266115%_)))))
              (let () (declare (not safe)) (_%g6605266115%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g6605266115%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6605266115%_)))))
                          (let () (declare (not safe)) (_%g6605266115%_)))))
                  (let () (declare (not safe)) (_%g6605266115%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#with-procedure-contract|
      (lambda (_%stx66438%_)
        (let* ((_%g6644166465%_
                (lambda (_%g6644266461%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6644266461%_)))
               (_%g6644066581%_
                (lambda (_%g6644266469%_)
                  (if (gx#stx-pair? _%g6644266469%_)
                      (let ((_%e6644566472%_ (gx#syntax-e _%g6644266469%_)))
                        (let ((_%hd6644666476%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6644566472%_)))
                              (_%tl6644766479%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6644566472%_))))
                          (if (gx#stx-pair? _%tl6644766479%_)
                              (let ((_%e6644866482%_
                                     (gx#syntax-e _%tl6644766479%_)))
                                (let ((_%hd6644966486%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6644866482%_)))
                                      (_%tl6645066489%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6644866482%_))))
                                  (if (gx#stx-pair/null? _%tl6645066489%_)
                                      (let ((_g85132_
                                             (gx#syntax-split-splice
                                              _%tl6645066489%_
                                              '0)))
                                        (begin
                                          (let ((_g85133_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g85132_)
                                                       (##values-length
                                                        _g85132_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g85133_ 2)))
                                                (error "Context expects 2 values"
                                                       _g85133_)))
                                          (let ((_%target6645166492%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g85132_ 0)))
                                                (_%tl6645366495%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g85132_ 1))))
                                            (if (gx#stx-null? _%tl6645366495%_)
                                                (letrec ((_%loop6645466498%_
                                                          (lambda (_%hd6645266502%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body6645866505%_)
                    (if (gx#stx-pair? _%hd6645266502%_)
                        (let ((_%e6645566508%_ (gx#syntax-e _%hd6645266502%_)))
                          (let ((_%lp-hd6645666512%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6645566508%_)))
                                (_%lp-tl6645766515%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6645566508%_))))
                            (_%loop6645466498%_
                             _%lp-tl6645766515%_
                             (cons _%lp-hd6645666512%_ _%body6645866505%_))))
                        (let ((_%body6645966518%_
                               (reverse _%body6645866505%_)))
                          ((lambda (_%L66522%_ _%L66524%_)
                             (let* ((_%g6654266550%_
                                     (lambda (_%g6654366546%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g6654366546%_)))
                                    (_%g6654166577%_
                                     (lambda (_%g6654366554%_)
                                       ((lambda (_%L66557%_)
                                          (cons (gx#datum->syntax '#f 'using)
                                                (cons _%L66557%_
                                                      (foldr (lambda (_%g6656866571%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g6656966574%_)
                       (cons _%g6656866571%_ _%g6656966574%_))
                     '()
                     _%L66522%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g6654366554%_))))
                               (_%g6654166577%_
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~Interface[1]#make-procedure-contract|
                                   _%stx66438%_
                                   _%L66524%_
                                   '#t)))))
                           _%body6645966518%_
                           _%hd6644966486%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop6645466498%_
                                                   _%target6645166492%_
                                                   '()))
                                                (_%g6644166465%_
                                                 _%g6644266469%_)))))
                                      (_%g6644166465%_ _%g6644266469%_))))
                              (_%g6644166465%_ _%g6644266469%_))))
                      (_%g6644166465%_ _%g6644266469%_)))))
          (_%g6644066581%_ _%stx66438%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#with-procedure-unchecked-contract|
      (lambda (_%stx66586%_)
        (let* ((_%g6658966613%_
                (lambda (_%g6659066609%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6659066609%_)))
               (_%g6658866729%_
                (lambda (_%g6659066617%_)
                  (if (gx#stx-pair? _%g6659066617%_)
                      (let ((_%e6659366620%_ (gx#syntax-e _%g6659066617%_)))
                        (let ((_%hd6659466624%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6659366620%_)))
                              (_%tl6659566627%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6659366620%_))))
                          (if (gx#stx-pair? _%tl6659566627%_)
                              (let ((_%e6659666630%_
                                     (gx#syntax-e _%tl6659566627%_)))
                                (let ((_%hd6659766634%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6659666630%_)))
                                      (_%tl6659866637%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6659666630%_))))
                                  (if (gx#stx-pair/null? _%tl6659866637%_)
                                      (let ((_g85134_
                                             (gx#syntax-split-splice
                                              _%tl6659866637%_
                                              '0)))
                                        (begin
                                          (let ((_g85135_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g85134_)
                                                       (##values-length
                                                        _g85134_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g85135_ 2)))
                                                (error "Context expects 2 values"
                                                       _g85135_)))
                                          (let ((_%target6659966640%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g85134_ 0)))
                                                (_%tl6660166643%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g85134_ 1))))
                                            (if (gx#stx-null? _%tl6660166643%_)
                                                (letrec ((_%loop6660266646%_
                                                          (lambda (_%hd6660066650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body6660666653%_)
                    (if (gx#stx-pair? _%hd6660066650%_)
                        (let ((_%e6660366656%_ (gx#syntax-e _%hd6660066650%_)))
                          (let ((_%lp-hd6660466660%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6660366656%_)))
                                (_%lp-tl6660566663%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6660366656%_))))
                            (_%loop6660266646%_
                             _%lp-tl6660566663%_
                             (cons _%lp-hd6660466660%_ _%body6660666653%_))))
                        (let ((_%body6660766666%_
                               (reverse _%body6660666653%_)))
                          ((lambda (_%L66670%_ _%L66672%_)
                             (let* ((_%g6669066698%_
                                     (lambda (_%g6669166694%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g6669166694%_)))
                                    (_%g6668966725%_
                                     (lambda (_%g6669166702%_)
                                       ((lambda (_%L66705%_)
                                          (cons (gx#datum->syntax '#f 'using)
                                                (cons _%L66705%_
                                                      (foldr (lambda (_%g6671666719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g6671766722%_)
                       (cons _%g6671666719%_ _%g6671766722%_))
                     '()
                     _%L66670%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g6669166702%_))))
                               (_%g6668966725%_
                                (let ()
                                  (declare (not safe))
                                  (|gerbil/core/contract~Interface[1]#make-procedure-contract|
                                   _%stx66586%_
                                   _%L66672%_
                                   '#f)))))
                           _%body6660766666%_
                           _%hd6659766634%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop6660266646%_
                                                   _%target6659966640%_
                                                   '()))
                                                (_%g6658966613%_
                                                 _%g6659066617%_)))))
                                      (_%g6658966613%_ _%g6659066617%_))))
                              (_%g6658966613%_ _%g6659066617%_))))
                      (_%g6658966613%_ _%g6659066617%_)))))
          (_%g6658866729%_ _%stx66586%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#lambda/c|
      (lambda (_%stx66734%_)
        (letrec ((_%make-lambda66737%_
                  (lambda (_%signature67005%_ _%return67007%_ _%body67008%_)
                    (let* ((_%g6701067042%_
                            (lambda (_%g6701167038%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6701167038%_)))
                           (_%g6700967157%_
                            (lambda (_%g6701167046%_)
                              (if (gx#stx-pair? _%g6701167046%_)
                                  (let ((_%e6701667049%_
                                         (gx#syntax-e _%g6701167046%_)))
                                    (let ((_%hd6701767053%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6701667049%_)))
                                          (_%tl6701867056%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6701667049%_))))
                                      (if (gx#stx-pair? _%tl6701867056%_)
                                          (let ((_%e6701967059%_
                                                 (gx#syntax-e
                                                  _%tl6701867056%_)))
                                            (let ((_%hd6702067063%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e6701967059%_)))
                                                  (_%tl6702167066%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e6701967059%_))))
                                              (if (gx#stx-pair?
                                                   _%tl6702167066%_)
                                                  (let ((_%e6702267069%_
                                                         (gx#syntax-e
                                                          _%tl6702167066%_)))
                                                    (let ((_%hd6702367073%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6702267069%_)))
                                                          (_%tl6702467076%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6702267069%_))))
                                                      (if (gx#stx-pair?
                                                           _%tl6702467076%_)
                                                          (let ((_%e6702567079%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl6702467076%_)))
                    (let ((_%hd6702667083%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6702567079%_)))
                          (_%tl6702767086%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6702567079%_))))
                      (if (gx#stx-pair/null? _%hd6702667083%_)
                          (let ((_g85136_
                                 (gx#syntax-split-splice _%hd6702667083%_ '0)))
                            (begin
                              (let ((_g85137_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g85136_)
                                           (##values-length _g85136_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g85137_ 2)))
                                    (error "Context expects 2 values"
                                           _g85137_)))
                              (let ((_%target6702867089%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g85136_ 0)))
                                    (_%tl6703067092%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g85136_ 1))))
                                (if (gx#stx-null? _%tl6703067092%_)
                                    (letrec ((_%loop6703167095%_
                                              (lambda (_%hd6702967099%_
                                                       _%body6703567102%_)
                                                (if (gx#stx-pair?
                                                     _%hd6702967099%_)
                                                    (let ((_%e6703267105%_
                                                           (gx#syntax-e
                                                            _%hd6702967099%_)))
                                                      (let ((_%lp-hd6703367109%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e6703267105%_)))
                    (_%lp-tl6703467112%_
                     (let () (declare (not safe)) (##cdr _%e6703267105%_))))
                (_%loop6703167095%_
                 _%lp-tl6703467112%_
                 (cons _%lp-hd6703367109%_ _%body6703567102%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%body6703667115%_
                                                           (reverse _%body6703567102%_)))
                                                      (if (gx#stx-null?
                                                           _%tl6702767086%_)
                                                          ((lambda (_%L67119%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%L67121%_
                            _%L67122%_
                            _%L67123%_)
                     (gx#stx-wrap-source
                      (cons (gx#datum->syntax '#f 'lambda)
                            (cons _%L67123%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'with-procedure-signature)
                                              (cons (cons _%L67122%_
                                                          (cons _%L67121%_
                                                                (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'with-procedure-contract)
                        (cons _%L67122%_
                              (foldr (lambda (_%g6714867151%_ _%g6714967154%_)
                                       (cons _%g6714867151%_ _%g6714967154%_))
                                     '()
                                     _%L67119%_)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      (gx#stx-source _%stx66734%_)))
                   _%body6703667115%_
                   _%hd6702367073%_
                   _%hd6702067063%_
                   _%hd6701767053%_)
                  (_%g6701067042%_ _%g6701167046%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop6703167095%_
                                       _%target6702867089%_
                                       '()))
                                    (_%g6701067042%_ _%g6701167046%_)))))
                          (_%g6701067042%_ _%g6701167046%_))))
                  (_%g6701067042%_ _%g6701167046%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g6701067042%_
                                                   _%g6701167046%_))))
                                          (_%g6701067042%_ _%g6701167046%_))))
                                  (_%g6701067042%_ _%g6701167046%_)))))
                      (_%g6700967157%_
                       (list (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                _%signature67005%_))
                             _%signature67005%_
                             _%return67007%_
                             _%body67008%_))))))
          (let* ((_%__stx8323183232%_ _%stx66734%_)
                 (_%g6674166789%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8323183232%_))))
            (let ((_%__kont8323483235%_
                   (lambda (_%L66960%_ _%L66962%_ _%L66963%_)
                     (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                          _%L66963%_)
                         (_%make-lambda66737%_
                          _%L66963%_
                          _%L66962%_
                          (foldr (lambda (_%g6698466987%_ _%g6698566990%_)
                                   (cons _%g6698466987%_ _%g6698566990%_))
                                 '()
                                 _%L66960%_))
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons _%L66963%_
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'with-procedure-signature)
                                                 (cons (cons '#f
                                                             (cons _%L66962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons '#f '())))
               (foldr (lambda (_%g6699266995%_ _%g6699366998%_)
                        (cons _%g6699266995%_ _%g6699366998%_))
                      '()
                      _%L66960%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))))
                  (_%__kont8323883239%_
                   (lambda (_%L66846%_ _%L66848%_)
                     (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                          _%L66848%_)
                         (cons (gx#datum->syntax '#f 'lambda/c)
                               (cons _%L66848%_
                                     (cons (gx#datum->syntax '#f '=>)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 (foldr (lambda (_%g6686666869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g6686766872%_)
                  (cons _%g6686666869%_ _%g6686766872%_))
                '()
                _%L66846%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons _%L66848%_
                                     (foldr (lambda (_%g6687466877%_
                                                     _%g6687566880%_)
                                              (cons _%g6687466877%_
                                                    _%g6687566880%_))
                                            '()
                                            _%L66846%_)))))))
              (let* ((_%__match8329883299%_
                      (lambda (_%e6676966796%_
                               _%hd6677066800%_
                               _%tl6677166803%_
                               _%e6677266806%_
                               _%hd6677366810%_
                               _%tl6677466813%_
                               _%__splice8324083241%_
                               _%target6677566816%_
                               _%tl6677766819%_)
                        (letrec ((_%loop6677866822%_
                                  (lambda (_%hd6677666826%_ _%body6678266829%_)
                                    (if (gx#stx-pair? _%hd6677666826%_)
                                        (let ((_%e6677966832%_
                                               (gx#syntax-e _%hd6677666826%_)))
                                          (let ((_%lp-tl6678166839%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6677966832%_)))
                                                (_%lp-hd6678066836%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6677966832%_))))
                                            (_%loop6677866822%_
                                             _%lp-tl6678166839%_
                                             (cons _%lp-hd6678066836%_
                                                   _%body6678266829%_))))
                                        (let ((_%body6678366842%_
                                               (reverse _%body6678266829%_)))
                                          (_%__kont8323883239%_
                                           _%body6678366842%_
                                           _%hd6677366810%_))))))
                          (_%loop6677866822%_ _%target6677566816%_ '()))))
                     (_%__match8327883279%_
                      (lambda (_%e6674666890%_
                               _%hd6674766894%_
                               _%tl6674866897%_
                               _%e6674966900%_
                               _%hd6675066904%_
                               _%tl6675166907%_
                               _%e6675266910%_
                               _%hd6675366914%_
                               _%tl6675466917%_
                               _%e6675566920%_
                               _%hd6675666924%_
                               _%tl6675766927%_
                               _%__splice8323683237%_
                               _%target6675866930%_
                               _%tl6676066933%_)
                        (letrec ((_%loop6676166936%_
                                  (lambda (_%hd6675966940%_ _%body6676566943%_)
                                    (if (gx#stx-pair? _%hd6675966940%_)
                                        (let ((_%e6676266946%_
                                               (gx#syntax-e _%hd6675966940%_)))
                                          (let ((_%lp-tl6676466953%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6676266946%_)))
                                                (_%lp-hd6676366950%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6676266946%_))))
                                            (_%loop6676166936%_
                                             _%lp-tl6676466953%_
                                             (cons _%lp-hd6676366950%_
                                                   _%body6676566943%_))))
                                        (let ((_%body6676666956%_
                                               (reverse _%body6676566943%_)))
                                          (_%__kont8323483235%_
                                           _%body6676666956%_
                                           _%hd6675666924%_
                                           _%hd6675066904%_))))))
                          (_%loop6676166936%_ _%target6675866930%_ '())))))
                (if (gx#stx-pair? _%__stx8323183232%_)
                    (let ((_%e6674666890%_ (gx#syntax-e _%__stx8323183232%_)))
                      (let ((_%tl6674866897%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6674666890%_)))
                            (_%hd6674766894%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6674666890%_))))
                        (if (gx#stx-pair? _%tl6674866897%_)
                            (let ((_%e6674966900%_
                                   (gx#syntax-e _%tl6674866897%_)))
                              (let ((_%tl6675166907%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6674966900%_)))
                                    (_%hd6675066904%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6674966900%_))))
                                (if (gx#stx-pair? _%tl6675166907%_)
                                    (let ((_%e6675266910%_
                                           (gx#syntax-e _%tl6675166907%_)))
                                      (let ((_%tl6675466917%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6675266910%_)))
                                            (_%hd6675366914%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6675266910%_))))
                                        (if (gx#identifier? _%hd6675366914%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~TypedDefinitions[1]#_g85138_|
                                                 _%hd6675366914%_)
                                                (if (gx#stx-pair?
                                                     _%tl6675466917%_)
                                                    (let ((_%e6675566920%_
                                                           (gx#syntax-e
                                                            _%tl6675466917%_)))
                                                      (let ((_%tl6675766927%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6675566920%_)))
                    (_%hd6675666924%_
                     (let () (declare (not safe)) (##car _%e6675566920%_))))
                (if (gx#stx-pair/null? _%tl6675766927%_)
                    (let ((_%__splice8323683237%_
                           (gx#syntax-split-splice->vector
                            _%tl6675766927%_
                            '0)))
                      (let ((_%tl6676066933%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8323683237%_ '1)))
                            (_%target6675866930%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice8323683237%_ '0))))
                        (if (gx#stx-null? _%tl6676066933%_)
                            (_%__match8327883279%_
                             _%e6674666890%_
                             _%hd6674766894%_
                             _%tl6674866897%_
                             _%e6674966900%_
                             _%hd6675066904%_
                             _%tl6675166907%_
                             _%e6675266910%_
                             _%hd6675366914%_
                             _%tl6675466917%_
                             _%e6675566920%_
                             _%hd6675666924%_
                             _%tl6675766927%_
                             _%__splice8323683237%_
                             _%target6675866930%_
                             _%tl6676066933%_)
                            (if (gx#stx-pair/null? _%tl6675166907%_)
                                (let ((_%__splice8324083241%_
                                       (gx#syntax-split-splice->vector
                                        _%tl6675166907%_
                                        '0)))
                                  (let ((_%tl6677766819%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8324083241%_
                                            '1)))
                                        (_%target6677566816%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice8324083241%_
                                            '0))))
                                    (if (gx#stx-null? _%tl6677766819%_)
                                        (_%__match8329883299%_
                                         _%e6674666890%_
                                         _%hd6674766894%_
                                         _%tl6674866897%_
                                         _%e6674966900%_
                                         _%hd6675066904%_
                                         _%tl6675166907%_
                                         _%__splice8324083241%_
                                         _%target6677566816%_
                                         _%tl6677766819%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6674166789%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g6674166789%_))))))
                    (if (gx#stx-pair/null? _%tl6675166907%_)
                        (let ((_%__splice8324083241%_
                               (gx#syntax-split-splice->vector
                                _%tl6675166907%_
                                '0)))
                          (let ((_%tl6677766819%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8324083241%_ '1)))
                                (_%target6677566816%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8324083241%_ '0))))
                            (if (gx#stx-null? _%tl6677766819%_)
                                (_%__match8329883299%_
                                 _%e6674666890%_
                                 _%hd6674766894%_
                                 _%tl6674866897%_
                                 _%e6674966900%_
                                 _%hd6675066904%_
                                 _%tl6675166907%_
                                 _%__splice8324083241%_
                                 _%target6677566816%_
                                 _%tl6677766819%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g6674166789%_)))))
                        (let () (declare (not safe)) (_%g6674166789%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%tl6675166907%_)
                                                        (let ((_%__splice8324083241%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl6675166907%_
                                                                '0)))
                                                          (let ((_%tl6677766819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8324083241%_ '1)))
                        (_%target6677566816%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice8324083241%_ '0))))
                    (if (gx#stx-null? _%tl6677766819%_)
                        (_%__match8329883299%_
                         _%e6674666890%_
                         _%hd6674766894%_
                         _%tl6674866897%_
                         _%e6674966900%_
                         _%hd6675066904%_
                         _%tl6675166907%_
                         _%__splice8324083241%_
                         _%target6677566816%_
                         _%tl6677766819%_)
                        (let () (declare (not safe)) (_%g6674166789%_)))))
                (let () (declare (not safe)) (_%g6674166789%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%tl6675166907%_)
                                                    (let ((_%__splice8324083241%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl6675166907%_
                                                            '0)))
                                                      (let ((_%tl6677766819%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8324083241%_ '1)))
                    (_%target6677566816%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8324083241%_ '0))))
                (if (gx#stx-null? _%tl6677766819%_)
                    (_%__match8329883299%_
                     _%e6674666890%_
                     _%hd6674766894%_
                     _%tl6674866897%_
                     _%e6674966900%_
                     _%hd6675066904%_
                     _%tl6675166907%_
                     _%__splice8324083241%_
                     _%target6677566816%_
                     _%tl6677766819%_)
                    (let () (declare (not safe)) (_%g6674166789%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6674166789%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl6675166907%_)
                                                (let ((_%__splice8324083241%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl6675166907%_
                                                        '0)))
                                                  (let ((_%tl6677766819%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8324083241%_
                                                            '1)))
                                                        (_%target6677566816%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice8324083241%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl6677766819%_)
                                                        (_%__match8329883299%_
                                                         _%e6674666890%_
                                                         _%hd6674766894%_
                                                         _%tl6674866897%_
                                                         _%e6674966900%_
                                                         _%hd6675066904%_
                                                         _%tl6675166907%_
                                                         _%__splice8324083241%_
                                                         _%target6677566816%_
                                                         _%tl6677766819%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g6674166789%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6674166789%_))))))
                                    (if (gx#stx-pair/null? _%tl6675166907%_)
                                        (let ((_%__splice8324083241%_
                                               (gx#syntax-split-splice->vector
                                                _%tl6675166907%_
                                                '0)))
                                          (let ((_%tl6677766819%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice8324083241%_
                                                    '1)))
                                                (_%target6677566816%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice8324083241%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl6677766819%_)
                                                (_%__match8329883299%_
                                                 _%e6674666890%_
                                                 _%hd6674766894%_
                                                 _%tl6674866897%_
                                                 _%e6674966900%_
                                                 _%hd6675066904%_
                                                 _%tl6675166907%_
                                                 _%__splice8324083241%_
                                                 _%target6677566816%_
                                                 _%tl6677766819%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6674166789%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6674166789%_))))))
                            (let () (declare (not safe)) (_%g6674166789%_)))))
                    (let () (declare (not safe)) (_%g6674166789%_)))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#def*/c|
      (lambda (_%$stx67164%_)
        (let* ((_%g6716867192%_
                (lambda (_%g6716967188%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6716967188%_)))
               (_%g6716767277%_
                (lambda (_%g6716967196%_)
                  (if (gx#stx-pair? _%g6716967196%_)
                      (let ((_%e6717267199%_ (gx#syntax-e _%g6716967196%_)))
                        (let ((_%hd6717367203%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6717267199%_)))
                              (_%tl6717467206%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6717267199%_))))
                          (if (gx#stx-pair? _%tl6717467206%_)
                              (let ((_%e6717567209%_
                                     (gx#syntax-e _%tl6717467206%_)))
                                (let ((_%hd6717667213%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6717567209%_)))
                                      (_%tl6717767216%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6717567209%_))))
                                  (if (gx#stx-pair/null? _%tl6717767216%_)
                                      (let ((_g85139_
                                             (gx#syntax-split-splice
                                              _%tl6717767216%_
                                              '0)))
                                        (begin
                                          (let ((_g85140_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g85139_)
                                                       (##values-length
                                                        _g85139_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g85140_ 2)))
                                                (error "Context expects 2 values"
                                                       _g85140_)))
                                          (let ((_%target6717867219%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g85139_ 0)))
                                                (_%tl6718067222%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g85139_ 1))))
                                            (if (gx#stx-null? _%tl6718067222%_)
                                                (letrec ((_%loop6718167225%_
                                                          (lambda (_%hd6717967229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause6718567232%_)
                    (if (gx#stx-pair? _%hd6717967229%_)
                        (let ((_%e6718267235%_ (gx#syntax-e _%hd6717967229%_)))
                          (let ((_%lp-hd6718367239%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6718267235%_)))
                                (_%lp-tl6718467242%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6718267235%_))))
                            (_%loop6718167225%_
                             _%lp-tl6718467242%_
                             (cons _%lp-hd6718367239%_ _%clause6718567232%_))))
                        (let ((_%clause6718667245%_
                               (reverse _%clause6718567232%_)))
                          ((lambda (_%L67249%_ _%L67251%_)
                             (cons (gx#datum->syntax '#f 'def)
                                   (cons _%L67251%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'case-lambda/c)
                                                     (foldr (lambda (_%g6726867271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g6726967274%_)
                      (cons _%g6726867271%_ _%g6726967274%_))
                    '()
                    _%L67249%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))
                           _%clause6718667245%_
                           _%hd6717667213%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop6718167225%_
                                                   _%target6717867219%_
                                                   '()))
                                                (_%g6716867192%_
                                                 _%g6716967196%_)))))
                                      (_%g6716867192%_ _%g6716967196%_))))
                              (_%g6716867192%_ _%g6716967196%_))))
                      (_%g6716867192%_ _%g6716967196%_)))))
          (_%g6716767277%_ _%$stx67164%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#case-lambda/c|
      (lambda (_%stx67282%_)
        (letrec ((_%is-clause-signature?67285%_
                  (lambda (_%clause67819%_)
                    (let* ((_%__stx8330183302%_ _%clause67819%_)
                           (_%g6782367865%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8330183302%_))))
                      (let ((_%__kont8330483305%_
                             (lambda (_%L67997%_ _%L67999%_ _%L68000%_) '#t))
                            (_%__kont8330883309%_
                             (lambda (_%L67912%_ _%L67914%_)
                               (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                                _%L67914%_))))
                        (let* ((_%__match8335683357%_
                                (lambda (_%e6784867872%_
                                         _%hd6784967876%_
                                         _%tl6785067879%_
                                         _%__splice8331083311%_
                                         _%target6785167882%_
                                         _%tl6785367885%_)
                                  (letrec ((_%loop6785467888%_
                                            (lambda (_%hd6785267892%_
                                                     _%body6785867895%_)
                                              (if (gx#stx-pair?
                                                   _%hd6785267892%_)
                                                  (let ((_%e6785567898%_
                                                         (gx#syntax-e
                                                          _%hd6785267892%_)))
                                                    (let ((_%lp-tl6785767905%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6785567898%_)))
                                                          (_%lp-hd6785667902%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6785567898%_))))
                                                      (_%loop6785467888%_
                                                       _%lp-tl6785767905%_
                                                       (cons _%lp-hd6785667902%_
                                                             _%body6785867895%_))))
                                                  (let ((_%body6785967908%_
                                                         (reverse _%body6785867895%_)))
                                                    (_%__kont8330883309%_
                                                     _%body6785967908%_
                                                     _%hd6784967876%_))))))
                                    (_%loop6785467888%_
                                     _%target6785167882%_
                                     '()))))
                               (_%__match8334283343%_
                                (lambda (_%e6782867937%_
                                         _%hd6782967941%_
                                         _%tl6783067944%_
                                         _%e6783167947%_
                                         _%hd6783267951%_
                                         _%tl6783367954%_
                                         _%e6783467957%_
                                         _%hd6783567961%_
                                         _%tl6783667964%_
                                         _%__splice8330683307%_
                                         _%target6783767967%_
                                         _%tl6783967970%_)
                                  (letrec ((_%loop6784067973%_
                                            (lambda (_%hd6783867977%_
                                                     _%body6784467980%_)
                                              (if (gx#stx-pair?
                                                   _%hd6783867977%_)
                                                  (let ((_%e6784167983%_
                                                         (gx#syntax-e
                                                          _%hd6783867977%_)))
                                                    (let ((_%lp-tl6784367990%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6784167983%_)))
                                                          (_%lp-hd6784267987%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6784167983%_))))
                                                      (_%loop6784067973%_
                                                       _%lp-tl6784367990%_
                                                       (cons _%lp-hd6784267987%_
                                                             _%body6784467980%_))))
                                                  (let ((_%body6784567993%_
                                                         (reverse _%body6784467980%_)))
                                                    (_%__kont8330483305%_
                                                     _%body6784567993%_
                                                     _%hd6783567961%_
                                                     _%hd6782967941%_))))))
                                    (_%loop6784067973%_
                                     _%target6783767967%_
                                     '())))))
                          (if (gx#stx-pair? _%__stx8330183302%_)
                              (let ((_%e6782867937%_
                                     (gx#syntax-e _%__stx8330183302%_)))
                                (let ((_%tl6783067944%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6782867937%_)))
                                      (_%hd6782967941%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6782867937%_))))
                                  (if (gx#stx-pair? _%tl6783067944%_)
                                      (let ((_%e6783167947%_
                                             (gx#syntax-e _%tl6783067944%_)))
                                        (let ((_%tl6783367954%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6783167947%_)))
                                              (_%hd6783267951%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6783167947%_))))
                                          (if (gx#identifier? _%hd6783267951%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypedDefinitions[1]#_g85141_|
                                                   _%hd6783267951%_)
                                                  (if (gx#stx-pair?
                                                       _%tl6783367954%_)
                                                      (let ((_%e6783467957%_
                                                             (gx#syntax-e
                                                              _%tl6783367954%_)))
                                                        (let ((_%tl6783667964%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6783467957%_)))
                      (_%hd6783567961%_
                       (let () (declare (not safe)) (##car _%e6783467957%_))))
                  (if (gx#stx-pair/null? _%tl6783667964%_)
                      (let ((_%__splice8330683307%_
                             (gx#syntax-split-splice->vector
                              _%tl6783667964%_
                              '0)))
                        (let ((_%tl6783967970%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8330683307%_ '1)))
                              (_%target6783767967%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8330683307%_ '0))))
                          (if (gx#stx-null? _%tl6783967970%_)
                              (_%__match8334283343%_
                               _%e6782867937%_
                               _%hd6782967941%_
                               _%tl6783067944%_
                               _%e6783167947%_
                               _%hd6783267951%_
                               _%tl6783367954%_
                               _%e6783467957%_
                               _%hd6783567961%_
                               _%tl6783667964%_
                               _%__splice8330683307%_
                               _%target6783767967%_
                               _%tl6783967970%_)
                              (if (gx#stx-pair/null? _%tl6783067944%_)
                                  (let ((_%__splice8331083311%_
                                         (gx#syntax-split-splice->vector
                                          _%tl6783067944%_
                                          '0)))
                                    (let ((_%tl6785367885%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8331083311%_
                                              '1)))
                                          (_%target6785167882%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8331083311%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6785367885%_)
                                          (_%__match8335683357%_
                                           _%e6782867937%_
                                           _%hd6782967941%_
                                           _%tl6783067944%_
                                           _%__splice8331083311%_
                                           _%target6785167882%_
                                           _%tl6785367885%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6782367865%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6782367865%_))))))
                      (if (gx#stx-pair/null? _%tl6783067944%_)
                          (let ((_%__splice8331083311%_
                                 (gx#syntax-split-splice->vector
                                  _%tl6783067944%_
                                  '0)))
                            (let ((_%tl6785367885%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8331083311%_ '1)))
                                  (_%target6785167882%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8331083311%_
                                      '0))))
                              (if (gx#stx-null? _%tl6785367885%_)
                                  (_%__match8335683357%_
                                   _%e6782867937%_
                                   _%hd6782967941%_
                                   _%tl6783067944%_
                                   _%__splice8331083311%_
                                   _%target6785167882%_
                                   _%tl6785367885%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6782367865%_)))))
                          (let () (declare (not safe)) (_%g6782367865%_))))))
              (if (gx#stx-pair/null? _%tl6783067944%_)
                  (let ((_%__splice8331083311%_
                         (gx#syntax-split-splice->vector _%tl6783067944%_ '0)))
                    (let ((_%tl6785367885%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8331083311%_ '1)))
                          (_%target6785167882%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8331083311%_ '0))))
                      (if (gx#stx-null? _%tl6785367885%_)
                          (_%__match8335683357%_
                           _%e6782867937%_
                           _%hd6782967941%_
                           _%tl6783067944%_
                           _%__splice8331083311%_
                           _%target6785167882%_
                           _%tl6785367885%_)
                          (let () (declare (not safe)) (_%g6782367865%_)))))
                  (let () (declare (not safe)) (_%g6782367865%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl6783067944%_)
                                                      (let ((_%__splice8331083311%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl6783067944%_
                                                              '0)))
                                                        (let ((_%tl6785367885%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8331083311%_ '1)))
                      (_%target6785167882%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8331083311%_ '0))))
                  (if (gx#stx-null? _%tl6785367885%_)
                      (_%__match8335683357%_
                       _%e6782867937%_
                       _%hd6782967941%_
                       _%tl6783067944%_
                       _%__splice8331083311%_
                       _%target6785167882%_
                       _%tl6785367885%_)
                      (let () (declare (not safe)) (_%g6782367865%_)))))
              (let () (declare (not safe)) (_%g6782367865%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl6783067944%_)
                                                  (let ((_%__splice8331083311%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl6783067944%_
                                                          '0)))
                                                    (let ((_%tl6785367885%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8331083311%_
                                                              '1)))
                                                          (_%target6785167882%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8331083311%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl6785367885%_)
                                                          (_%__match8335683357%_
                                                           _%e6782867937%_
                                                           _%hd6782967941%_
                                                           _%tl6783067944%_
                                                           _%__splice8331083311%_
                                                           _%target6785167882%_
                                                           _%tl6785367885%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g6782367865%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6782367865%_))))))
                                      (if (gx#stx-pair/null? _%tl6783067944%_)
                                          (let ((_%__splice8331083311%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl6783067944%_
                                                  '0)))
                                            (let ((_%tl6785367885%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8331083311%_
                                                      '1)))
                                                  (_%target6785167882%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8331083311%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6785367885%_)
                                                  (_%__match8335683357%_
                                                   _%e6782867937%_
                                                   _%hd6782967941%_
                                                   _%tl6783067944%_
                                                   _%__splice8331083311%_
                                                   _%target6785167882%_
                                                   _%tl6785367885%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6782367865%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6782367865%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g6782367865%_))))))))
                 (_%clause-e67287%_
                  (lambda (_%clause67559%_)
                    (let* ((_%__stx8335983360%_ _%clause67559%_)
                           (_%g6756367605%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8335983360%_))))
                      (let ((_%__kont8336283363%_
                             (lambda (_%L67745%_ _%L67747%_ _%L67748%_)
                               (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                                    _%L67748%_)
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (|gerbil/core/contract~Interface[1]#check-signature!__%|
                                        '#f
                                        '#f
                                        '#f
                                        _%stx67282%_
                                        _%L67748%_
                                        _%L67747%_))
                                     (let* ((_%g6776867776%_
                                             (lambda (_%g6776967772%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%g6776967772%_)))
                                            (_%g6776767803%_
                                             (lambda (_%g6776967780%_)
                                               ((lambda (_%L67783%_)
                                                  (cons _%L67783%_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'with-procedure-signature)
                            (cons (cons _%L67748%_
                                        (cons _%L67747%_ (cons '#f '())))
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'with-procedure-contract)
                                              (cons _%L67748%_
                                                    (foldr (lambda (_%g6779467797%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g6779567800%_)
                     (cons _%g6779467797%_ _%g6779567800%_))
                   '()
                   _%L67745%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%g6776967780%_))))
                                       (_%g6776767803%_
                                        (let ()
                                          (declare (not safe))
                                          (|gerbil/core/contract~Interface[1]#signature-arguments-in|
                                           _%L67748%_)))))
                                   (cons _%L67748%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'with-procedure-signature)
                                                     (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%L67747%_ (cons '#f '())))
                   (foldr (lambda (_%g6780667809%_ _%g6780767812%_)
                            (cons _%g6780667809%_ _%g6780767812%_))
                          '()
                          _%L67745%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))
                            (_%__kont8336683367%_
                             (lambda (_%L67652%_ _%L67654%_)
                               (if (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                                    _%L67654%_)
                                   (_%clause-e67287%_
                                    (cons _%L67654%_
                                          (cons (gx#datum->syntax '#f '=>)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       ':t)
                                                      (foldr (lambda (_%g6766967672%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g6767067675%_)
                       (cons _%g6766967672%_ _%g6767067675%_))
                     '()
                     _%L67652%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%clause67559%_))))
                        (let* ((_%__match8341483415%_
                                (lambda (_%e6758867612%_
                                         _%hd6758967616%_
                                         _%tl6759067619%_
                                         _%__splice8336883369%_
                                         _%target6759167622%_
                                         _%tl6759367625%_)
                                  (letrec ((_%loop6759467628%_
                                            (lambda (_%hd6759267632%_
                                                     _%body6759867635%_)
                                              (if (gx#stx-pair?
                                                   _%hd6759267632%_)
                                                  (let ((_%e6759567638%_
                                                         (gx#syntax-e
                                                          _%hd6759267632%_)))
                                                    (let ((_%lp-tl6759767645%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6759567638%_)))
                                                          (_%lp-hd6759667642%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6759567638%_))))
                                                      (_%loop6759467628%_
                                                       _%lp-tl6759767645%_
                                                       (cons _%lp-hd6759667642%_
                                                             _%body6759867635%_))))
                                                  (let ((_%body6759967648%_
                                                         (reverse _%body6759867635%_)))
                                                    (_%__kont8336683367%_
                                                     _%body6759967648%_
                                                     _%hd6758967616%_))))))
                                    (_%loop6759467628%_
                                     _%target6759167622%_
                                     '()))))
                               (_%__match8340083401%_
                                (lambda (_%e6756867685%_
                                         _%hd6756967689%_
                                         _%tl6757067692%_
                                         _%e6757167695%_
                                         _%hd6757267699%_
                                         _%tl6757367702%_
                                         _%e6757467705%_
                                         _%hd6757567709%_
                                         _%tl6757667712%_
                                         _%__splice8336483365%_
                                         _%target6757767715%_
                                         _%tl6757967718%_)
                                  (letrec ((_%loop6758067721%_
                                            (lambda (_%hd6757867725%_
                                                     _%body6758467728%_)
                                              (if (gx#stx-pair?
                                                   _%hd6757867725%_)
                                                  (let ((_%e6758167731%_
                                                         (gx#syntax-e
                                                          _%hd6757867725%_)))
                                                    (let ((_%lp-tl6758367738%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6758167731%_)))
                                                          (_%lp-hd6758267735%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6758167731%_))))
                                                      (_%loop6758067721%_
                                                       _%lp-tl6758367738%_
                                                       (cons _%lp-hd6758267735%_
                                                             _%body6758467728%_))))
                                                  (let ((_%body6758567741%_
                                                         (reverse _%body6758467728%_)))
                                                    (_%__kont8336283363%_
                                                     _%body6758567741%_
                                                     _%hd6757567709%_
                                                     _%hd6756967689%_))))))
                                    (_%loop6758067721%_
                                     _%target6757767715%_
                                     '())))))
                          (if (gx#stx-pair? _%__stx8335983360%_)
                              (let ((_%e6756867685%_
                                     (gx#syntax-e _%__stx8335983360%_)))
                                (let ((_%tl6757067692%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6756867685%_)))
                                      (_%hd6756967689%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6756867685%_))))
                                  (if (gx#stx-pair? _%tl6757067692%_)
                                      (let ((_%e6757167695%_
                                             (gx#syntax-e _%tl6757067692%_)))
                                        (let ((_%tl6757367702%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6757167695%_)))
                                              (_%hd6757267699%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6757167695%_))))
                                          (if (gx#identifier? _%hd6757267699%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypedDefinitions[1]#_g85142_|
                                                   _%hd6757267699%_)
                                                  (if (gx#stx-pair?
                                                       _%tl6757367702%_)
                                                      (let ((_%e6757467705%_
                                                             (gx#syntax-e
                                                              _%tl6757367702%_)))
                                                        (let ((_%tl6757667712%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6757467705%_)))
                      (_%hd6757567709%_
                       (let () (declare (not safe)) (##car _%e6757467705%_))))
                  (if (gx#stx-pair/null? _%tl6757667712%_)
                      (let ((_%__splice8336483365%_
                             (gx#syntax-split-splice->vector
                              _%tl6757667712%_
                              '0)))
                        (let ((_%tl6757967718%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8336483365%_ '1)))
                              (_%target6757767715%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice8336483365%_ '0))))
                          (if (gx#stx-null? _%tl6757967718%_)
                              (_%__match8340083401%_
                               _%e6756867685%_
                               _%hd6756967689%_
                               _%tl6757067692%_
                               _%e6757167695%_
                               _%hd6757267699%_
                               _%tl6757367702%_
                               _%e6757467705%_
                               _%hd6757567709%_
                               _%tl6757667712%_
                               _%__splice8336483365%_
                               _%target6757767715%_
                               _%tl6757967718%_)
                              (if (gx#stx-pair/null? _%tl6757067692%_)
                                  (let ((_%__splice8336883369%_
                                         (gx#syntax-split-splice->vector
                                          _%tl6757067692%_
                                          '0)))
                                    (let ((_%tl6759367625%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8336883369%_
                                              '1)))
                                          (_%target6759167622%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8336883369%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6759367625%_)
                                          (_%__match8341483415%_
                                           _%e6756867685%_
                                           _%hd6756967689%_
                                           _%tl6757067692%_
                                           _%__splice8336883369%_
                                           _%target6759167622%_
                                           _%tl6759367625%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6756367605%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6756367605%_))))))
                      (if (gx#stx-pair/null? _%tl6757067692%_)
                          (let ((_%__splice8336883369%_
                                 (gx#syntax-split-splice->vector
                                  _%tl6757067692%_
                                  '0)))
                            (let ((_%tl6759367625%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice8336883369%_ '1)))
                                  (_%target6759167622%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice8336883369%_
                                      '0))))
                              (if (gx#stx-null? _%tl6759367625%_)
                                  (_%__match8341483415%_
                                   _%e6756867685%_
                                   _%hd6756967689%_
                                   _%tl6757067692%_
                                   _%__splice8336883369%_
                                   _%target6759167622%_
                                   _%tl6759367625%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g6756367605%_)))))
                          (let () (declare (not safe)) (_%g6756367605%_))))))
              (if (gx#stx-pair/null? _%tl6757067692%_)
                  (let ((_%__splice8336883369%_
                         (gx#syntax-split-splice->vector _%tl6757067692%_ '0)))
                    (let ((_%tl6759367625%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8336883369%_ '1)))
                          (_%target6759167622%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice8336883369%_ '0))))
                      (if (gx#stx-null? _%tl6759367625%_)
                          (_%__match8341483415%_
                           _%e6756867685%_
                           _%hd6756967689%_
                           _%tl6757067692%_
                           _%__splice8336883369%_
                           _%target6759167622%_
                           _%tl6759367625%_)
                          (let () (declare (not safe)) (_%g6756367605%_)))))
                  (let () (declare (not safe)) (_%g6756367605%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%tl6757067692%_)
                                                      (let ((_%__splice8336883369%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl6757067692%_
                                                              '0)))
                                                        (let ((_%tl6759367625%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8336883369%_ '1)))
                      (_%target6759167622%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8336883369%_ '0))))
                  (if (gx#stx-null? _%tl6759367625%_)
                      (_%__match8341483415%_
                       _%e6756867685%_
                       _%hd6756967689%_
                       _%tl6757067692%_
                       _%__splice8336883369%_
                       _%target6759167622%_
                       _%tl6759367625%_)
                      (let () (declare (not safe)) (_%g6756367605%_)))))
              (let () (declare (not safe)) (_%g6756367605%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _%tl6757067692%_)
                                                  (let ((_%__splice8336883369%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl6757067692%_
                                                          '0)))
                                                    (let ((_%tl6759367625%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8336883369%_
                                                              '1)))
                                                          (_%target6759167622%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8336883369%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl6759367625%_)
                                                          (_%__match8341483415%_
                                                           _%e6756867685%_
                                                           _%hd6756967689%_
                                                           _%tl6757067692%_
                                                           _%__splice8336883369%_
                                                           _%target6759167622%_
                                                           _%tl6759367625%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g6756367605%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6756367605%_))))))
                                      (if (gx#stx-pair/null? _%tl6757067692%_)
                                          (let ((_%__splice8336883369%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl6757067692%_
                                                  '0)))
                                            (let ((_%tl6759367625%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8336883369%_
                                                      '1)))
                                                  (_%target6759167622%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8336883369%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6759367625%_)
                                                  (_%__match8341483415%_
                                                   _%e6756867685%_
                                                   _%hd6756967689%_
                                                   _%tl6757067692%_
                                                   _%__splice8336883369%_
                                                   _%target6759167622%_
                                                   _%tl6759367625%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6756367605%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g6756367605%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g6756367605%_)))))))))
          (let* ((_%__stx8341783418%_ _%stx67282%_)
                 (_%g6729067323%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8341783418%_))))
            (let ((_%__kont8342083421%_
                   (lambda (_%L67442%_)
                     (let* ((_%g6746567482%_
                             (lambda (_%g6746667478%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g6746667478%_)))
                            (_%g6746467543%_
                             (lambda (_%g6746667486%_)
                               (if (gx#stx-pair/null? _%g6746667486%_)
                                   (let ((_g85143_
                                          (gx#syntax-split-splice
                                           _%g6746667486%_
                                           '0)))
                                     (begin
                                       (let ((_g85144_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g85143_)
                                                    (##values-length _g85143_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g85144_ 2)))
                                             (error "Context expects 2 values"
                                                    _g85144_)))
                                       (let ((_%target6746867489%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g85143_ 0)))
                                             (_%tl6747067492%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g85143_ 1))))
                                         (if (gx#stx-null? _%tl6747067492%_)
                                             (letrec ((_%loop6747167495%_
                                                       (lambda (_%hd6746967499%_
                                                                _%clause6747567502%_)
                                                         (if (gx#stx-pair?
                                                              _%hd6746967499%_)
                                                             (let ((_%e6747267505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd6746967499%_)))
                       (let ((_%lp-hd6747367509%_
                              (let ()
                                (declare (not safe))
                                (##car _%e6747267505%_)))
                             (_%lp-tl6747467512%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e6747267505%_))))
                         (_%loop6747167495%_
                          _%lp-tl6747467512%_
                          (cons _%lp-hd6747367509%_ _%clause6747567502%_))))
                     (let ((_%clause6747667515%_
                            (reverse _%clause6747567502%_)))
                       ((lambda (_%L67519%_)
                          (cons (gx#datum->syntax '#f 'case-lambda)
                                (foldr (lambda (_%g6753467537%_
                                                _%g6753567540%_)
                                         (cons _%g6753467537%_
                                               _%g6753567540%_))
                                       '()
                                       _%L67519%_)))
                        _%clause6747667515%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop6747167495%_
                                                _%target6746867489%_
                                                '()))
                                             (_%g6746567482%_
                                              _%g6746667486%_)))))
                                   (_%g6746567482%_ _%g6746667486%_)))))
                       (_%g6746467543%_
                        (map _%clause-e67287%_
                             (foldr (lambda (_%g6754667549%_ _%g6754767552%_)
                                      (cons _%g6754667549%_ _%g6754767552%_))
                                    '()
                                    _%L67442%_))))))
                  (_%__kont8342483425%_
                   (lambda (_%L67370%_)
                     (cons (gx#datum->syntax '#f 'case-lambda)
                           (foldr (lambda (_%g6738667389%_ _%g6738767392%_)
                                    (cons _%g6738667389%_ _%g6738767392%_))
                                  '()
                                  _%L67370%_)))))
              (let* ((_%__match8345683457%_
                      (lambda (_%e6730667330%_
                               _%hd6730767334%_
                               _%tl6730867337%_
                               _%__splice8342683427%_
                               _%target6730967340%_
                               _%tl6731167343%_)
                        (letrec ((_%loop6731267346%_
                                  (lambda (_%hd6731067350%_
                                           _%clause6731667353%_)
                                    (if (gx#stx-pair? _%hd6731067350%_)
                                        (let ((_%e6731367356%_
                                               (gx#syntax-e _%hd6731067350%_)))
                                          (let ((_%lp-tl6731567363%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6731367356%_)))
                                                (_%lp-hd6731467360%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6731367356%_))))
                                            (_%loop6731267346%_
                                             _%lp-tl6731567363%_
                                             (cons _%lp-hd6731467360%_
                                                   _%clause6731667353%_))))
                                        (let ((_%clause6731767366%_
                                               (reverse _%clause6731667353%_)))
                                          (_%__kont8342483425%_
                                           _%clause6731767366%_))))))
                          (_%loop6731267346%_ _%target6730967340%_ '()))))
                     (_%__match8344283443%_
                      (lambda (_%e6729367402%_
                               _%hd6729467406%_
                               _%tl6729567409%_
                               _%__splice8342283423%_
                               _%target6729667412%_
                               _%tl6729867415%_)
                        (letrec ((_%loop6729967418%_
                                  (lambda (_%hd6729767422%_
                                           _%clause6730367425%_)
                                    (if (gx#stx-pair? _%hd6729767422%_)
                                        (let ((_%e6730067428%_
                                               (gx#syntax-e _%hd6729767422%_)))
                                          (let ((_%lp-tl6730267435%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6730067428%_)))
                                                (_%lp-hd6730167432%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6730067428%_))))
                                            (_%loop6729967418%_
                                             _%lp-tl6730267435%_
                                             (cons _%lp-hd6730167432%_
                                                   _%clause6730367425%_))))
                                        (let* ((_%clause6730467438%_
                                                (reverse _%clause6730367425%_))
                                               (_%L67442%_
                                                _%clause6730467438%_))
                                          (if (ormap _%is-clause-signature?67285%_
                                                     (foldr (lambda (_%g6745667459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g6745767462%_)
                      (cons _%g6745667459%_ _%g6745767462%_))
                    '()
                    _%L67442%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8342083421%_ _%L67442%_)
                                              (_%__match8345683457%_
                                               _%e6729367402%_
                                               _%hd6729467406%_
                                               _%tl6729567409%_
                                               _%__splice8342283423%_
                                               _%target6729667412%_
                                               _%tl6729867415%_)))))))
                          (_%loop6729967418%_ _%target6729667412%_ '())))))
                (if (gx#stx-pair? _%__stx8341783418%_)
                    (let ((_%e6729367402%_ (gx#syntax-e _%__stx8341783418%_)))
                      (let ((_%tl6729567409%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6729367402%_)))
                            (_%hd6729467406%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6729367402%_))))
                        (if (gx#stx-pair/null? _%tl6729567409%_)
                            (let ((_%__splice8342283423%_
                                   (gx#syntax-split-splice->vector
                                    _%tl6729567409%_
                                    '0)))
                              (let ((_%tl6729867415%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8342283423%_
                                        '1)))
                                    (_%target6729667412%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8342283423%_
                                        '0))))
                                (if (gx#stx-null? _%tl6729867415%_)
                                    (_%__match8344283443%_
                                     _%e6729367402%_
                                     _%hd6729467406%_
                                     _%tl6729567409%_
                                     _%__splice8342283423%_
                                     _%target6729667412%_
                                     _%tl6729867415%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g6729067323%_)))))
                            (let () (declare (not safe)) (_%g6729067323%_)))))
                    (let () (declare (not safe)) (_%g6729067323%_)))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#@method|
      (lambda (_%stx68031%_)
        (let* ((_%__stx8345983460%_ _%stx68031%_)
               (_%g6803568080%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8345983460%_))))
          (let ((_%__kont8346283463%_
                 (lambda (_%L68236%_ _%L68238%_)
                   (let* ((_%str68255%_ (symbol->string (gx#stx-e _%L68238%_)))
                          (_%ix68258%_ (string-rindex _%str68255%_ '#\.))
                          (_%g6826368278%_
                           (lambda (_%g6826468274%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g6826468274%_)))
                          (_%g6826268334%_
                           (lambda (_%g6826468282%_)
                             (if (gx#stx-pair? _%g6826468282%_)
                                 (let ((_%e6826768285%_
                                        (gx#syntax-e _%g6826468282%_)))
                                   (let ((_%hd6826868289%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e6826768285%_)))
                                         (_%tl6826968292%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e6826768285%_))))
                                     (if (gx#stx-pair? _%tl6826968292%_)
                                         (let ((_%e6827068295%_
                                                (gx#syntax-e
                                                 _%tl6826968292%_)))
                                           (let ((_%hd6827168299%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e6827068295%_)))
                                                 (_%tl6827268302%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e6827068295%_))))
                                             (if (gx#stx-null?
                                                  _%tl6827268302%_)
                                                 ((lambda (_%L68305%_
                                                           _%L68307%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'call-method)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '%%ref-dotted)
                              (cons _%L68307%_ '()))
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%L68305%_ '()))
                              (foldr (lambda (_%g6832568328%_ _%g6832668331%_)
                                       (cons _%g6832568328%_ _%g6832668331%_))
                                     '()
                                     _%L68236%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd6827168299%_
                                                  _%hd6826868289%_)
                                                 (_%g6826368278%_
                                                  _%g6826468282%_))))
                                         (_%g6826368278%_ _%g6826468282%_))))
                                 (_%g6826368278%_ _%g6826468282%_)))))
                     (_%g6826268334%_
                      (list (gx#stx-identifier
                             _%L68238%_
                             (substring _%str68255%_ '0 _%ix68258%_))
                            (let ((__tmp85145
                                   (substring
                                    _%str68255%_
                                    (fx1+ _%ix68258%_)
                                    (string-length _%str68255%_))))
                              (declare (not safe))
                              (##string->symbol __tmp85145)))))))
                (_%__kont8346683467%_
                 (lambda (_%L68147%_ _%L68149%_ _%L68150%_)
                   (cons (gx#datum->syntax '#f 'call-method)
                         (cons _%L68149%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L68150%_ '()))
                                     (foldr (lambda (_%g6817068173%_
                                                     _%g6817168176%_)
                                              (cons _%g6817068173%_
                                                    _%g6817168176%_))
                                            '()
                                            _%L68147%_)))))))
            (let* ((_%__match8351683517%_
                    (lambda (_%e6805768087%_
                             _%hd6805868091%_
                             _%tl6805968094%_
                             _%e6806068097%_
                             _%hd6806168101%_
                             _%tl6806268104%_
                             _%e6806368107%_
                             _%hd6806468111%_
                             _%tl6806568114%_
                             _%__splice8346883469%_
                             _%target6806668117%_
                             _%tl6806868120%_)
                      (letrec ((_%loop6806968123%_
                                (lambda (_%hd6806768127%_ _%arg6807368130%_)
                                  (if (gx#stx-pair? _%hd6806768127%_)
                                      (let ((_%e6807068133%_
                                             (gx#syntax-e _%hd6806768127%_)))
                                        (let ((_%lp-tl6807268140%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6807068133%_)))
                                              (_%lp-hd6807168137%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6807068133%_))))
                                          (_%loop6806968123%_
                                           _%lp-tl6807268140%_
                                           (cons _%lp-hd6807168137%_
                                                 _%arg6807368130%_))))
                                      (let ((_%arg6807468143%_
                                             (reverse _%arg6807368130%_)))
                                        (_%__kont8346683467%_
                                         _%arg6807468143%_
                                         _%hd6806468111%_
                                         _%hd6806168101%_))))))
                        (_%loop6806968123%_ _%target6806668117%_ '()))))
                   (_%__match8350283503%_
                    (lambda (_%e6805768087%_
                             _%hd6805868091%_
                             _%tl6805968094%_
                             _%e6806068097%_
                             _%hd6806168101%_
                             _%tl6806268104%_)
                      (if (gx#stx-pair? _%tl6806268104%_)
                          (let ((_%e6806368107%_
                                 (gx#syntax-e _%tl6806268104%_)))
                            (let ((_%tl6806568114%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6806368107%_)))
                                  (_%hd6806468111%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6806368107%_))))
                              (if (gx#stx-pair/null? _%tl6806568114%_)
                                  (let ((_%__splice8346883469%_
                                         (gx#syntax-split-splice->vector
                                          _%tl6806568114%_
                                          '0)))
                                    (let ((_%tl6806868120%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8346883469%_
                                              '1)))
                                          (_%target6806668117%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8346883469%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6806868120%_)
                                          (_%__match8351683517%_
                                           _%e6805768087%_
                                           _%hd6805868091%_
                                           _%tl6805968094%_
                                           _%e6806068097%_
                                           _%hd6806168101%_
                                           _%tl6806268104%_
                                           _%e6806368107%_
                                           _%hd6806468111%_
                                           _%tl6806568114%_
                                           _%__splice8346883469%_
                                           _%target6806668117%_
                                           _%tl6806868120%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6803568080%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6803568080%_)))))
                          (let () (declare (not safe)) (_%g6803568080%_)))))
                   (_%__match8349083491%_
                    (lambda (_%e6803968186%_
                             _%hd6804068190%_
                             _%tl6804168193%_
                             _%e6804268196%_
                             _%hd6804368200%_
                             _%tl6804468203%_
                             _%__splice8346483465%_
                             _%target6804568206%_
                             _%tl6804768209%_)
                      (letrec ((_%loop6804868212%_
                                (lambda (_%hd6804668216%_ _%arg6805268219%_)
                                  (if (gx#stx-pair? _%hd6804668216%_)
                                      (let ((_%e6804968222%_
                                             (gx#syntax-e _%hd6804668216%_)))
                                        (let ((_%lp-tl6805168229%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6804968222%_)))
                                              (_%lp-hd6805068226%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6804968222%_))))
                                          (_%loop6804868212%_
                                           _%lp-tl6805168229%_
                                           (cons _%lp-hd6805068226%_
                                                 _%arg6805268219%_))))
                                      (let ((_%arg6805368232%_
                                             (reverse _%arg6805268219%_)))
                                        (let ((_%L68236%_ _%arg6805368232%_)
                                              (_%L68238%_ _%hd6804368200%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (|gerbil/core/contract~Using[1]#dotted-identifier?|
                                                 _%L68238%_))
                                              (_%__kont8346283463%_
                                               _%L68236%_
                                               _%L68238%_)
                                              (_%__match8350283503%_
                                               _%e6803968186%_
                                               _%hd6804068190%_
                                               _%tl6804168193%_
                                               _%e6804268196%_
                                               _%hd6804368200%_
                                               _%tl6804468203%_))))))))
                        (_%loop6804868212%_ _%target6804568206%_ '())))))
              (if (gx#stx-pair? _%__stx8345983460%_)
                  (let ((_%e6803968186%_ (gx#syntax-e _%__stx8345983460%_)))
                    (let ((_%tl6804168193%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6803968186%_)))
                          (_%hd6804068190%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6803968186%_))))
                      (if (gx#stx-pair? _%tl6804168193%_)
                          (let ((_%e6804268196%_
                                 (gx#syntax-e _%tl6804168193%_)))
                            (let ((_%tl6804468203%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6804268196%_)))
                                  (_%hd6804368200%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6804268196%_))))
                              (if (gx#stx-pair/null? _%tl6804468203%_)
                                  (let ((_%__splice8346483465%_
                                         (gx#syntax-split-splice->vector
                                          _%tl6804468203%_
                                          '0)))
                                    (let ((_%tl6804768209%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8346483465%_
                                              '1)))
                                          (_%target6804568206%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8346483465%_
                                              '0))))
                                      (if (gx#stx-null? _%tl6804768209%_)
                                          (_%__match8349083491%_
                                           _%e6803968186%_
                                           _%hd6804068190%_
                                           _%tl6804168193%_
                                           _%e6804268196%_
                                           _%hd6804368200%_
                                           _%tl6804468203%_
                                           _%__splice8346483465%_
                                           _%target6804568206%_
                                           _%tl6804768209%_)
                                          (if (gx#stx-pair? _%tl6804468203%_)
                                              (let ((_%e6806368107%_
                                                     (gx#syntax-e
                                                      _%tl6804468203%_)))
                                                (let ((_%tl6806568114%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6806368107%_)))
                                                      (_%hd6806468111%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6806368107%_))))
                                                  (if (gx#stx-pair/null?
                                                       _%tl6806568114%_)
                                                      (let ((_%__splice8346883469%_
                                                             (gx#syntax-split-splice->vector
                                                              _%tl6806568114%_
                                                              '0)))
                                                        (let ((_%tl6806868120%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice8346883469%_ '1)))
                      (_%target6806668117%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice8346883469%_ '0))))
                  (if (gx#stx-null? _%tl6806868120%_)
                      (_%__match8351683517%_
                       _%e6803968186%_
                       _%hd6804068190%_
                       _%tl6804168193%_
                       _%e6804268196%_
                       _%hd6804368200%_
                       _%tl6804468203%_
                       _%e6806368107%_
                       _%hd6806468111%_
                       _%tl6806568114%_
                       _%__splice8346883469%_
                       _%target6806668117%_
                       _%tl6806868120%_)
                      (let () (declare (not safe)) (_%g6803568080%_)))))
              (let () (declare (not safe)) (_%g6803568080%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g6803568080%_))))))
                                  (if (gx#stx-pair? _%tl6804468203%_)
                                      (let ((_%e6806368107%_
                                             (gx#syntax-e _%tl6804468203%_)))
                                        (let ((_%tl6806568114%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6806368107%_)))
                                              (_%hd6806468111%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6806368107%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl6806568114%_)
                                              (let ((_%__splice8346883469%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl6806568114%_
                                                      '0)))
                                                (let ((_%tl6806868120%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8346883469%_
                                                          '1)))
                                                      (_%target6806668117%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice8346883469%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl6806868120%_)
                                                      (_%__match8351683517%_
                                                       _%e6803968186%_
                                                       _%hd6804068190%_
                                                       _%tl6804168193%_
                                                       _%e6804268196%_
                                                       _%hd6804368200%_
                                                       _%tl6804468203%_
                                                       _%e6806368107%_
                                                       _%hd6806468111%_
                                                       _%tl6806568114%_
                                                       _%__splice8346883469%_
                                                       _%target6806668117%_
                                                       _%tl6806868120%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g6803568080%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g6803568080%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g6803568080%_))))))
                          (let () (declare (not safe)) (_%g6803568080%_)))))
                  (let () (declare (not safe)) (_%g6803568080%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defmethod/c|
      (lambda (_%stx68344%_)
        (letrec ((_%make-method-name68347%_
                  (lambda (_%method69521%_ _%rest69523%_)
                    (let _%loop69525%_ ((_%rest69528%_ _%rest69523%_))
                      (let* ((_%__stx8351983520%_ _%rest69528%_)
                             (_%g6953369556%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx8351983520%_))))
                        (let ((_%__kont8352283523%_
                               (lambda (_%L69644%_)
                                 (let ((_%info69658%_
                                        (let ()
                                          (declare (not safe))
                                          (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                           _%stx68344%_
                                           _%L69644%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (class-instance?
                                          gerbil/core/contract~InterfaceInfo#interface-info::t
                                          _%info69658%_))
                                       (if (find (lambda (_%ms69661%_)
                                                   (eq? (gx#stx-e
                                                         _%method69521%_)
                                                        (car _%ms69661%_)))
                                                 (let ((__obj84861
                                                        _%info69658%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (##structure-direct-instance-of?
                                                          __obj84861
                                                          'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          __obj84861
                                                          '4
                                                          '#f
                                                          '#f))
                                                       (unchecked-slot-ref
                                                        __obj84861
                                                        'interface-methods))))
                                           (gx#stx-identifier
                                            _%method69521%_
                                            (let ((__obj84862 _%info69658%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     __obj84862
                                                     'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     __obj84862
                                                     '2
                                                     '#f
                                                     '#f))
                                                  (unchecked-slot-ref
                                                   __obj84862
                                                   'namespace)))
                                            '"::"
                                            _%method69521%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"unknown interface method"
                                            _%stx68344%_
                                            _%L69644%_
                                            _%method69521%_))
                                       (gx#raise-syntax-error
                                        '#f
                                        '"not an interface type"
                                        _%stx68344%_
                                        _%L69644%_)))))
                              (_%__kont8352483525%_
                               (lambda (_%L69594%_ _%L69596%_)
                                 (_%loop69525%_ _%L69594%_)))
                              (_%__kont8352683527%_
                               (lambda () _%method69521%_)))
                          (let* ((_%g6953269567%_
                                  (lambda ()
                                    (if (gx#stx-null? _%__stx8351983520%_)
                                        (_%__kont8352683527%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6953369556%_)))))
                                 (_%__match8355883559%_
                                  (lambda (_%e6954569574%_
                                           _%hd6954669578%_
                                           _%tl6954769581%_
                                           _%e6954869584%_
                                           _%hd6954969588%_
                                           _%tl6955069591%_)
                                    (let ((_%L69594%_ _%tl6955069591%_)
                                          (_%L69596%_ _%hd6954669578%_))
                                      (if (gx#stx-keyword? _%L69596%_)
                                          (_%__kont8352483525%_
                                           _%L69594%_
                                           _%L69596%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6953369556%_)))))))
                            (if (gx#stx-pair? _%__stx8351983520%_)
                                (let ((_%e6953669620%_
                                       (gx#syntax-e _%__stx8351983520%_)))
                                  (let ((_%tl6953869627%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6953669620%_)))
                                        (_%hd6953769624%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6953669620%_))))
                                    (if (gx#stx-datum? _%hd6953769624%_)
                                        (let ((_%e6953969630%_
                                               (gx#stx-e _%hd6953769624%_)))
                                          (if (equal? _%e6953969630%_
                                                      'interface:)
                                              (if (gx#stx-pair?
                                                   _%tl6953869627%_)
                                                  (let ((_%e6954069634%_
                                                         (gx#syntax-e
                                                          _%tl6953869627%_)))
                                                    (let ((_%tl6954269641%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6954069634%_)))
                                                          (_%hd6954169638%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6954069634%_))))
                                                      (_%__kont8352283523%_
                                                       _%hd6954169638%_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6953369556%_)))
                                              (if (gx#stx-pair?
                                                   _%tl6953869627%_)
                                                  (let ((_%e6954869584%_
                                                         (gx#syntax-e
                                                          _%tl6953869627%_)))
                                                    (let ((_%tl6955069591%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6954869584%_)))
                                                          (_%hd6954969588%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6954869584%_))))
                                                      (_%__match8355883559%_
                                                       _%e6953669620%_
                                                       _%hd6953769624%_
                                                       _%tl6953869627%_
                                                       _%e6954869584%_
                                                       _%hd6954969588%_
                                                       _%tl6955069591%_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6953369556%_)))))
                                        (if (gx#stx-pair? _%tl6953869627%_)
                                            (let ((_%e6954869584%_
                                                   (gx#syntax-e
                                                    _%tl6953869627%_)))
                                              (let ((_%tl6955069591%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6954869584%_)))
                                                    (_%hd6954969588%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6954869584%_))))
                                                (_%__match8355883559%_
                                                 _%e6953669620%_
                                                 _%hd6953769624%_
                                                 _%tl6953869627%_
                                                 _%e6954869584%_
                                                 _%hd6954969588%_
                                                 _%tl6955069591%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6953369556%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g6953269567%_)))))))))
                 (_%defmethod-rest68349%_
                  (lambda (_%rest69378%_)
                    (let _%recur69381%_ ((_%rest69384%_ _%rest69378%_))
                      (let* ((_%__stx8356383564%_ _%rest69384%_)
                             (_%g6938969413%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx8356383564%_))))
                        (let ((_%__kont8356683567%_
                               (lambda (_%L69503%_)
                                 (_%recur69381%_ _%L69503%_)))
                              (_%__kont8356883569%_
                               (lambda (_%L69451%_ _%L69453%_ _%L69454%_)
                                 (cons _%L69454%_
                                       (cons _%L69453%_
                                             (_%recur69381%_ _%L69451%_)))))
                              (_%__kont8357083571%_ (lambda () '())))
                          (let* ((_%g6938869424%_
                                  (lambda ()
                                    (if (gx#stx-null? _%__stx8356383564%_)
                                        (_%__kont8357083571%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g6938969413%_)))))
                                 (_%__match8360283603%_
                                  (lambda (_%e6940269431%_
                                           _%hd6940369435%_
                                           _%tl6940469438%_
                                           _%e6940569441%_
                                           _%hd6940669445%_
                                           _%tl6940769448%_)
                                    (let ((_%L69451%_ _%tl6940769448%_)
                                          (_%L69453%_ _%hd6940669445%_)
                                          (_%L69454%_ _%hd6940369435%_))
                                      (if (gx#stx-keyword? _%L69454%_)
                                          (_%__kont8356883569%_
                                           _%L69451%_
                                           _%L69453%_
                                           _%L69454%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g6938969413%_)))))))
                            (if (gx#stx-pair? _%__stx8356383564%_)
                                (let ((_%e6939269479%_
                                       (gx#syntax-e _%__stx8356383564%_)))
                                  (let ((_%tl6939469486%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6939269479%_)))
                                        (_%hd6939369483%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6939269479%_))))
                                    (if (gx#stx-datum? _%hd6939369483%_)
                                        (let ((_%e6939569489%_
                                               (gx#stx-e _%hd6939369483%_)))
                                          (if (equal? _%e6939569489%_
                                                      'interface:)
                                              (if (gx#stx-pair?
                                                   _%tl6939469486%_)
                                                  (let ((_%e6939669493%_
                                                         (gx#syntax-e
                                                          _%tl6939469486%_)))
                                                    (let ((_%tl6939869500%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6939669493%_)))
                                                          (_%hd6939769497%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6939669493%_))))
                                                      (_%__kont8356683567%_
                                                       _%tl6939869500%_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6938969413%_)))
                                              (if (gx#stx-pair?
                                                   _%tl6939469486%_)
                                                  (let ((_%e6940569441%_
                                                         (gx#syntax-e
                                                          _%tl6939469486%_)))
                                                    (let ((_%tl6940769448%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6940569441%_)))
                                                          (_%hd6940669445%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6940569441%_))))
                                                      (_%__match8360283603%_
                                                       _%e6939269479%_
                                                       _%hd6939369483%_
                                                       _%tl6939469486%_
                                                       _%e6940569441%_
                                                       _%hd6940669445%_
                                                       _%tl6940769448%_)))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g6938969413%_)))))
                                        (if (gx#stx-pair? _%tl6939469486%_)
                                            (let ((_%e6940569441%_
                                                   (gx#syntax-e
                                                    _%tl6939469486%_)))
                                              (let ((_%tl6940769448%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6940569441%_)))
                                                    (_%hd6940669445%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6940569441%_))))
                                                (_%__match8360283603%_
                                                 _%e6939269479%_
                                                 _%hd6939369483%_
                                                 _%tl6939469486%_
                                                 _%e6940569441%_
                                                 _%hd6940669445%_
                                                 _%tl6940769448%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6938969413%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g6938869424%_))))))))))
          (let* ((_%__stx8360783608%_ _%stx68344%_)
                 (_%g6835368482%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx8360783608%_))))
            (let ((_%__kont8361083611%_
                   (lambda (_%L69194%_
                            _%L69196%_
                            _%L69197%_
                            _%L69198%_
                            _%L69199%_
                            _%L69200%_
                            _%L69201%_)
                     (let* ((_%g6923769245%_
                             (lambda (_%g6923869241%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g6923869241%_)))
                            (_%g6923669370%_
                             (lambda (_%g6923869249%_)
                               ((lambda (_%L69252%_)
                                  (let* ((_%g6926469272%_
                                          (lambda (_%g6926569268%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g6926569268%_)))
                                         (_%g6926369358%_
                                          (lambda (_%g6926569276%_)
                                            ((lambda (_%L69279%_)
                                               (let* ((_%g6929269300%_
                                                       (lambda (_%g6929369296%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g6929369296%_)))
                                                      (_%g6929169354%_
                                                       (lambda (_%g6929369304%_)
                                                         ((lambda (_%L69307%_)
                                                            (let* ((_%g6932069328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g6932169324%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g6932169324%_)))
                           (_%g6931969350%_
                            (lambda (_%g6932169332%_)
                              ((lambda (_%L69335%_)
                                 (cons (gx#datum->syntax '#f 'defmethod)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@method~)
                                                   (cons _%L69307%_
                                                         (cons _%L69199%_
                                                               '())))
                                             (cons _%L69279%_ _%L69335%_))))
                               _%g6932169332%_))))
                      (_%g6931969350%_ (_%defmethod-rest68349%_ _%L69194%_))))
                  _%g6929369304%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g6929169354%_
                                                  (_%make-method-name68347%_
                                                   _%L69200%_
                                                   _%L69194%_))))
                                             _%g6926569276%_))))
                                    (_%g6926369358%_
                                     (gx#stx-wrap-source
                                      (cons (gx#datum->syntax '#f 'lambda/c)
                                            (cons (cons _%L69252%_ _%L69197%_)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'using)
                                                              (cons (cons _%L69198%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (cons _%L69252%_
                                        (cons (gx#datum->syntax '#f '::-)
                                              (cons _%L69199%_ '()))))
                            (cons (cons (gx#datum->syntax '#f 'with-receiver)
                                        (cons _%L69198%_
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'let)
                                                          (cons '()
                                                                (foldr (lambda (_%g6936169364%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _%g6936269367%_)
                                 (cons _%g6936169364%_ _%g6936269367%_))
                               '()
                               _%L69196%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (gx#stx-source _%stx68344%_)))))
                                _%g6923869249%_))))
                       (_%g6923669370%_ (gx#genident _%L69198%_)))))
                  (_%__kont8361483615%_
                   (lambda (_%L68809%_
                            _%L68811%_
                            _%L68812%_
                            _%L68813%_
                            _%L68814%_
                            _%L68815%_
                            _%L68816%_)
                     (let* ((_%g6885668873%_
                             (lambda (_%g6885768869%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g6885768869%_)))
                            (_%g6885569055%_
                             (lambda (_%g6885768877%_)
                               (if (gx#stx-pair/null? _%g6885768877%_)
                                   (let ((_g85146_
                                          (gx#syntax-split-splice
                                           _%g6885768877%_
                                           '0)))
                                     (begin
                                       (let ((_g85147_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g85146_)
                                                    (##values-length _g85146_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g85147_ 2)))
                                             (error "Context expects 2 values"
                                                    _g85147_)))
                                       (let ((_%target6885968880%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g85146_ 0)))
                                             (_%tl6886168883%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g85146_ 1))))
                                         (if (gx#stx-null? _%tl6886168883%_)
                                             (letrec ((_%loop6886268886%_
                                                       (lambda (_%hd6886068890%_
                                                                _%receiver6886668893%_)
                                                         (if (gx#stx-pair?
                                                              _%hd6886068890%_)
                                                             (let ((_%e6886368896%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%hd6886068890%_)))
                       (let ((_%lp-hd6886468900%_
                              (let ()
                                (declare (not safe))
                                (##car _%e6886368896%_)))
                             (_%lp-tl6886568903%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e6886368896%_))))
                         (_%loop6886268886%_
                          _%lp-tl6886568903%_
                          (cons _%lp-hd6886468900%_ _%receiver6886668893%_))))
                     (let ((_%receiver6886768906%_
                            (reverse _%receiver6886668893%_)))
                       ((lambda (_%L68910%_)
                          (let* ((_%g6892668934%_
                                  (lambda (_%g6892768930%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g6892768930%_)))
                                 (_%g6892569020%_
                                  (lambda (_%g6892768938%_)
                                    ((lambda (_%L68941%_)
                                       (let* ((_%g6895468962%_
                                               (lambda (_%g6895568958%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g6895568958%_)))
                                              (_%g6895369016%_
                                               (lambda (_%g6895568966%_)
                                                 ((lambda (_%L68969%_)
                                                    (let* ((_%g6898268990%_
                                                            (lambda (_%g6898368986%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g6898368986%_)))
                                                           (_%g6898169012%_
                                                            (lambda (_%g6898368994%_)
                                                              ((lambda (_%L68997%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'defmethod)
                               (cons (cons (gx#datum->syntax '#f '@method~)
                                           (cons _%L68969%_
                                                 (cons _%L68814%_ '())))
                                     (cons _%L68941%_ _%L68997%_))))
                       _%g6898368994%_))))
              (_%g6898169012%_ (_%defmethod-rest68349%_ _%L68809%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g6895568966%_))))
                                         (_%g6895369016%_
                                          (_%make-method-name68347%_
                                           _%L68815%_
                                           _%L68809%_))))
                                     _%g6892768938%_))))
                            (_%g6892569020%_
                             (gx#stx-wrap-source
                              (cons (gx#datum->syntax '#f 'case-lambda/c)
                                    (begin
                                      (gx#syntax-check-splice-targets
                                       _%L68811%_
                                       _%L68813%_
                                       _%L68910%_
                                       _%L68813%_
                                       _%L68812%_
                                       _%L68910%_)
                                      (foldr (lambda (_%g6902369033%_
                                                      _%g6902469036%_
                                                      _%g6902569038%_
                                                      _%g6902669040%_
                                                      _%g6902769042%_
                                                      _%g6902869044%_
                                                      _%g6902969046%_)
                                               (cons (cons (cons _%g6902569038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g6902769042%_)
                   (cons (cons (gx#datum->syntax '#f 'using)
                               (cons (cons _%g6902469036%_
                                           (cons _%g6902569038%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '::-)
                                                       (cons _%L68814%_ '()))))
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'with-receiver)
                                                 (cons _%g6902469036%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let)
                           (cons '()
                                 (foldr (lambda (_%g6903069049%_
                                                 _%g6903169052%_)
                                          (cons _%g6903069049%_
                                                _%g6903169052%_))
                                        '()
                                        _%g6902369033%_)))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g6902969046%_))
                                             '()
                                             _%L68811%_
                                             _%L68813%_
                                             _%L68910%_
                                             _%L68813%_
                                             _%L68812%_
                                             _%L68910%_)))
                              (gx#stx-source _%stx68344%_)))))
                        _%receiver6886768906%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%loop6886268886%_
                                                _%target6885968880%_
                                                '()))
                                             (_%g6885668873%_
                                              _%g6885768877%_)))))
                                   (_%g6885668873%_ _%g6885768877%_)))))
                       (_%g6885569055%_
                        (map gx#genident
                             (foldr (lambda (_%g6905869061%_ _%g6905969064%_)
                                      (cons _%g6905869061%_ _%g6905969064%_))
                                    '()
                                    _%L68813%_))))))
                  (_%__kont8361883619%_
                   (lambda (_%L68549%_
                            _%L68551%_
                            _%L68552%_
                            _%L68553%_
                            _%L68554%_)
                     (let* ((_%g6858068595%_
                             (lambda (_%g6858168591%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g6858168591%_)))
                            (_%g6857968640%_
                             (lambda (_%g6858168599%_)
                               (if (gx#stx-pair? _%g6858168599%_)
                                   (let ((_%e6858468602%_
                                          (gx#syntax-e _%g6858168599%_)))
                                     (let ((_%hd6858568606%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e6858468602%_)))
                                           (_%tl6858668609%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e6858468602%_))))
                                       (if (gx#stx-pair? _%tl6858668609%_)
                                           (let ((_%e6858768612%_
                                                  (gx#syntax-e
                                                   _%tl6858668609%_)))
                                             (let ((_%hd6858868616%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e6858768612%_)))
                                                   (_%tl6858968619%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e6858768612%_))))
                                               (if (gx#stx-null?
                                                    _%tl6858968619%_)
                                                   ((lambda (_%L68622%_
                                                             _%L68624%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defmethod)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 '@method~)
                                (cons _%L68624%_ (cons _%L68552%_ '())))
                          (cons _%L68551%_ _%L68622%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd6858868616%_
                                                    _%hd6858568606%_)
                                                   (_%g6858068595%_
                                                    _%g6858168599%_))))
                                           (_%g6858068595%_ _%g6858168599%_))))
                                   (_%g6858068595%_ _%g6858168599%_)))))
                       (_%g6857968640%_
                        (list (_%make-method-name68347%_ _%L68553%_ _%L68549%_)
                              (_%defmethod-rest68349%_ _%L68549%_)))))))
              (let* ((_%g6835268644%_
                      (lambda ()
                        (let ((_%e6845968489%_
                               (gx#syntax-e _%__stx8360783608%_)))
                          (let ((_%tl6846168496%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6845968489%_)))
                                (_%hd6846068493%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6845968489%_))))
                            (if (gx#stx-pair? _%tl6846168496%_)
                                (let ((_%e6846268499%_
                                       (gx#syntax-e _%tl6846168496%_)))
                                  (let ((_%tl6846468506%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6846268499%_)))
                                        (_%hd6846368503%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6846268499%_))))
                                    (if (gx#stx-pair? _%hd6846368503%_)
                                        (let ((_%e6846568509%_
                                               (gx#syntax-e _%hd6846368503%_)))
                                          (let ((_%tl6846768516%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6846568509%_)))
                                                (_%hd6846668513%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6846568509%_))))
                                            (if (gx#stx-pair? _%tl6846768516%_)
                                                (let ((_%e6846868519%_
                                                       (gx#syntax-e
                                                        _%tl6846768516%_)))
                                                  (let ((_%tl6847068526%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e6846868519%_)))
                                                        (_%hd6846968523%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e6846868519%_))))
                                                    (if (gx#stx-pair?
                                                         _%tl6847068526%_)
                                                        (let ((_%e6847168529%_
                                                               (gx#syntax-e
                                                                _%tl6847068526%_)))
                                                          (let ((_%tl6847368536%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e6847168529%_)))
                        (_%hd6847268533%_
                         (let ()
                           (declare (not safe))
                           (##car _%e6847168529%_))))
                    (if (gx#stx-null? _%tl6847368536%_)
                        (if (gx#stx-pair? _%tl6846468506%_)
                            (let ((_%e6847468539%_
                                   (gx#syntax-e _%tl6846468506%_)))
                              (let ((_%tl6847668546%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6847468539%_)))
                                    (_%hd6847568543%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6847468539%_))))
                                (_%__kont8361883619%_
                                 _%tl6847668546%_
                                 _%hd6847568543%_
                                 _%hd6847268533%_
                                 _%hd6846968523%_
                                 _%hd6846668513%_)))
                            (let () (declare (not safe)) (_%g6835368482%_)))
                        (let () (declare (not safe)) (_%g6835368482%_)))))
                (let () (declare (not safe)) (_%g6835368482%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g6835368482%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g6835368482%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g6835368482%_)))))))
                     (_%__match8374483745%_
                      (lambda (_%e6840568651%_
                               _%hd6840668655%_
                               _%tl6840768658%_
                               _%e6840868661%_
                               _%hd6840968665%_
                               _%tl6841068668%_
                               _%e6841168671%_
                               _%hd6841268675%_
                               _%tl6841368678%_
                               _%e6841468681%_
                               _%hd6841568685%_
                               _%tl6841668688%_
                               _%e6841768691%_
                               _%hd6841868695%_
                               _%tl6841968698%_
                               _%e6842068701%_
                               _%hd6842168705%_
                               _%tl6842268708%_
                               _%e6842368711%_
                               _%hd6842468715%_
                               _%tl6842568718%_
                               _%__splice8361683617%_
                               _%target6842668721%_
                               _%tl6842868724%_)
                        (letrec ((_%loop6842968727%_
                                  (lambda (_%hd6842768731%_
                                           _%body6843368734%_
                                           _%args6843468736%_
                                           _%self6843568738%_)
                                    (if (gx#stx-pair? _%hd6842768731%_)
                                        (let ((_%e6843068741%_
                                               (gx#syntax-e _%hd6842768731%_)))
                                          (let ((_%lp-tl6843268748%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6843068741%_)))
                                                (_%lp-hd6843168745%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6843068741%_))))
                                            (if (gx#stx-pair?
                                                 _%lp-hd6843168745%_)
                                                (let ((_%e6843968751%_
                                                       (gx#syntax-e
                                                        _%lp-hd6843168745%_)))
                                                  (let ((_%tl6844168758%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e6843968751%_)))
                                                        (_%hd6844068755%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e6843968751%_))))
                                                    (if (gx#stx-pair?
                                                         _%hd6844068755%_)
                                                        (let ((_%e6844268761%_
                                                               (gx#syntax-e
                                                                _%hd6844068755%_)))
                                                          (let ((_%tl6844468768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e6844268761%_)))
                        (_%hd6844368765%_
                         (let ()
                           (declare (not safe))
                           (##car _%e6844268761%_))))
                    (if (gx#stx-pair/null? _%tl6844168758%_)
                        (let ((_g85148_
                               (gx#syntax-split-splice _%tl6844168758%_ '0)))
                          (begin
                            (let ((_g85149_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g85148_)
                                         (##values-length _g85148_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g85149_ 2)))
                                  (error "Context expects 2 values" _g85149_)))
                            (let ((_%target6844568771%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g85148_ 0)))
                                  (_%tl6844768774%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g85148_ 1))))
                              (if (gx#stx-null? _%tl6844768774%_)
                                  (letrec ((_%loop6844868777%_
                                            (lambda (_%hd6844668781%_
                                                     _%body6845268784%_)
                                              (if (gx#stx-pair?
                                                   _%hd6844668781%_)
                                                  (let ((_%e6844968787%_
                                                         (gx#syntax-e
                                                          _%hd6844668781%_)))
                                                    (let ((_%lp-hd6845068791%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e6844968787%_)))
                                                          (_%lp-tl6845168794%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e6844968787%_))))
                                                      (_%loop6844868777%_
                                                       _%lp-tl6845168794%_
                                                       (cons _%lp-hd6845068791%_
                                                             _%body6845268784%_))))
                                                  (let ((_%body6845368797%_
                                                         (reverse _%body6845268784%_)))
                                                    (_%loop6842968727%_
                                                     _%lp-tl6843268748%_
                                                     (cons _%body6845368797%_
                                                           _%body6843368734%_)
                                                     (cons _%tl6844468768%_
                                                           _%args6843468736%_)
                                                     (cons _%hd6844368765%_
                                                           _%self6843568738%_)))))))
                                    (_%loop6844868777%_
                                     _%target6844568771%_
                                     '()))
                                  (let ()
                                    (declare (not safe))
                                    (_%g6835268644%_))))))
                        (_%__kont8361883619%_
                         _%tl6842268708%_
                         _%hd6842168705%_
                         _%hd6841868695%_
                         _%hd6841568685%_
                         _%hd6841268675%_))))
                (_%__kont8361883619%_
                 _%tl6842268708%_
                 _%hd6842168705%_
                 _%hd6841868695%_
                 _%hd6841568685%_
                 _%hd6841268675%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont8361883619%_
                                                 _%tl6842268708%_
                                                 _%hd6842168705%_
                                                 _%hd6841868695%_
                                                 _%hd6841568685%_
                                                 _%hd6841268675%_))))
                                        (let ((_%self6843868806%_
                                               (reverse _%self6843568738%_))
                                              (_%args6843768804%_
                                               (reverse _%args6843468736%_))
                                              (_%body6843668801%_
                                               (reverse _%body6843368734%_)))
                                          (let ((_%L68809%_ _%tl6842268708%_)
                                                (_%L68811%_ _%body6843668801%_)
                                                (_%L68812%_ _%args6843768804%_)
                                                (_%L68813%_ _%self6843868806%_)
                                                (_%L68814%_ _%hd6841868695%_)
                                                (_%L68815%_ _%hd6841568685%_)
                                                (_%L68816%_ _%hd6841268675%_))
                                            (if (and (gx#identifier-list?
                                                      (foldr (lambda (_%g6884768850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g6884868853%_)
                       (cons _%g6884768850%_ _%g6884868853%_))
                     '()
                     _%L68813%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#identifier?
                                                      _%L68815%_))
                                                (_%__kont8361483615%_
                                                 _%L68809%_
                                                 _%L68811%_
                                                 _%L68812%_
                                                 _%L68813%_
                                                 _%L68814%_
                                                 _%L68815%_
                                                 _%L68816%_)
                                                (_%__kont8361883619%_
                                                 _%tl6842268708%_
                                                 _%hd6842168705%_
                                                 _%hd6841868695%_
                                                 _%hd6841568685%_
                                                 _%hd6841268675%_))))))))
                          (_%loop6842968727%_
                           _%target6842668721%_
                           '()
                           '()
                           '()))))
                     (_%__match8368883689%_
                      (lambda (_%e6836269074%_
                               _%hd6836369078%_
                               _%tl6836469081%_
                               _%e6836569084%_
                               _%hd6836669088%_
                               _%tl6836769091%_
                               _%e6836869094%_
                               _%hd6836969098%_
                               _%tl6837069101%_
                               _%e6837169104%_
                               _%hd6837269108%_
                               _%tl6837369111%_
                               _%e6837469114%_
                               _%hd6837569118%_
                               _%tl6837669121%_
                               _%e6837769124%_
                               _%hd6837869128%_
                               _%tl6837969131%_
                               _%e6838069134%_
                               _%hd6838169138%_
                               _%tl6838269141%_
                               _%e6838369144%_
                               _%hd6838469148%_
                               _%tl6838569151%_
                               _%e6838669154%_
                               _%hd6838769158%_
                               _%tl6838869161%_
                               _%__splice8361283613%_
                               _%target6838969164%_
                               _%tl6839169167%_)
                        (letrec ((_%loop6839269170%_
                                  (lambda (_%hd6839069174%_ _%body6839669177%_)
                                    (if (gx#stx-pair? _%hd6839069174%_)
                                        (let ((_%e6839369180%_
                                               (gx#syntax-e _%hd6839069174%_)))
                                          (let ((_%lp-tl6839569187%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e6839369180%_)))
                                                (_%lp-hd6839469184%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e6839369180%_))))
                                            (_%loop6839269170%_
                                             _%lp-tl6839569187%_
                                             (cons _%lp-hd6839469184%_
                                                   _%body6839669177%_))))
                                        (let ((_%body6839769190%_
                                               (reverse _%body6839669177%_)))
                                          (let ((_%L69194%_ _%tl6837969131%_)
                                                (_%L69196%_ _%body6839769190%_)
                                                (_%L69197%_ _%tl6838869161%_)
                                                (_%L69198%_ _%hd6838769158%_)
                                                (_%L69199%_ _%hd6837569118%_)
                                                (_%L69200%_ _%hd6837269108%_)
                                                (_%L69201%_ _%hd6836969098%_))
                                            (if (and (gx#identifier?
                                                      _%L69198%_)
                                                     (gx#identifier?
                                                      _%L69200%_))
                                                (_%__kont8361083611%_
                                                 _%L69194%_
                                                 _%L69196%_
                                                 _%L69197%_
                                                 _%L69198%_
                                                 _%L69199%_
                                                 _%L69200%_
                                                 _%L69201%_)
                                                (_%__kont8361883619%_
                                                 _%tl6837969131%_
                                                 _%hd6837869128%_
                                                 _%hd6837569118%_
                                                 _%hd6837269108%_
                                                 _%hd6836969098%_))))))))
                          (_%loop6839269170%_ _%target6838969164%_ '())))))
                (if (gx#stx-pair? _%__stx8360783608%_)
                    (let ((_%e6836269074%_ (gx#syntax-e _%__stx8360783608%_)))
                      (let ((_%tl6836469081%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6836269074%_)))
                            (_%hd6836369078%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6836269074%_))))
                        (if (gx#stx-pair? _%tl6836469081%_)
                            (let ((_%e6836569084%_
                                   (gx#syntax-e _%tl6836469081%_)))
                              (let ((_%tl6836769091%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6836569084%_)))
                                    (_%hd6836669088%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6836569084%_))))
                                (if (gx#stx-pair? _%hd6836669088%_)
                                    (let ((_%e6836869094%_
                                           (gx#syntax-e _%hd6836669088%_)))
                                      (let ((_%tl6837069101%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e6836869094%_)))
                                            (_%hd6836969098%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e6836869094%_))))
                                        (if (gx#stx-pair? _%tl6837069101%_)
                                            (let ((_%e6837169104%_
                                                   (gx#syntax-e
                                                    _%tl6837069101%_)))
                                              (let ((_%tl6837369111%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6837169104%_)))
                                                    (_%hd6837269108%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6837169104%_))))
                                                (if (gx#stx-pair?
                                                     _%tl6837369111%_)
                                                    (let ((_%e6837469114%_
                                                           (gx#syntax-e
                                                            _%tl6837369111%_)))
                                                      (let ((_%tl6837669121%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6837469114%_)))
                    (_%hd6837569118%_
                     (let () (declare (not safe)) (##car _%e6837469114%_))))
                (if (gx#stx-null? _%tl6837669121%_)
                    (if (gx#stx-pair? _%tl6836769091%_)
                        (let ((_%e6837769124%_ (gx#syntax-e _%tl6836769091%_)))
                          (let ((_%tl6837969131%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e6837769124%_)))
                                (_%hd6837869128%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e6837769124%_))))
                            (if (gx#stx-pair? _%hd6837869128%_)
                                (let ((_%e6838069134%_
                                       (gx#syntax-e _%hd6837869128%_)))
                                  (let ((_%tl6838269141%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e6838069134%_)))
                                        (_%hd6838169138%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e6838069134%_))))
                                    (if (gx#identifier? _%hd6838169138%_)
                                        (if (gx#free-identifier=?
                                             |gerbil/core/contract~TypedDefinitions[1]#_g85150_|
                                             _%hd6838169138%_)
                                            (if (gx#stx-pair? _%tl6838269141%_)
                                                (let ((_%e6838369144%_
                                                       (gx#syntax-e
                                                        _%tl6838269141%_)))
                                                  (let ((_%tl6838569151%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e6838369144%_)))
                                                        (_%hd6838469148%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e6838369144%_))))
                                                    (if (gx#stx-pair?
                                                         _%hd6838469148%_)
                                                        (let ((_%e6838669154%_
                                                               (gx#syntax-e
                                                                _%hd6838469148%_)))
                                                          (let ((_%tl6838869161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _%e6838669154%_)))
                        (_%hd6838769158%_
                         (let ()
                           (declare (not safe))
                           (##car _%e6838669154%_))))
                    (if (gx#stx-pair/null? _%tl6838569151%_)
                        (let ((_%__splice8361283613%_
                               (gx#syntax-split-splice->vector
                                _%tl6838569151%_
                                '0)))
                          (let ((_%tl6839169167%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8361283613%_ '1)))
                                (_%target6838969164%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice8361283613%_ '0))))
                            (if (gx#stx-null? _%tl6839169167%_)
                                (_%__match8368883689%_
                                 _%e6836269074%_
                                 _%hd6836369078%_
                                 _%tl6836469081%_
                                 _%e6836569084%_
                                 _%hd6836669088%_
                                 _%tl6836769091%_
                                 _%e6836869094%_
                                 _%hd6836969098%_
                                 _%tl6837069101%_
                                 _%e6837169104%_
                                 _%hd6837269108%_
                                 _%tl6837369111%_
                                 _%e6837469114%_
                                 _%hd6837569118%_
                                 _%tl6837669121%_
                                 _%e6837769124%_
                                 _%hd6837869128%_
                                 _%tl6837969131%_
                                 _%e6838069134%_
                                 _%hd6838169138%_
                                 _%tl6838269141%_
                                 _%e6838369144%_
                                 _%hd6838469148%_
                                 _%tl6838569151%_
                                 _%e6838669154%_
                                 _%hd6838769158%_
                                 _%tl6838869161%_
                                 _%__splice8361283613%_
                                 _%target6838969164%_
                                 _%tl6839169167%_)
                                (_%__kont8361883619%_
                                 _%tl6837969131%_
                                 _%hd6837869128%_
                                 _%hd6837569118%_
                                 _%hd6837269108%_
                                 _%hd6836969098%_))))
                        (_%__kont8361883619%_
                         _%tl6837969131%_
                         _%hd6837869128%_
                         _%hd6837569118%_
                         _%hd6837269108%_
                         _%hd6836969098%_))))
                (_%__kont8361883619%_
                 _%tl6837969131%_
                 _%hd6837869128%_
                 _%hd6837569118%_
                 _%hd6837269108%_
                 _%hd6836969098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont8361883619%_
                                                 _%tl6837969131%_
                                                 _%hd6837869128%_
                                                 _%hd6837569118%_
                                                 _%hd6837269108%_
                                                 _%hd6836969098%_))
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~TypedDefinitions[1]#_g85151_|
                                                 _%hd6838169138%_)
                                                (if (gx#stx-pair/null?
                                                     _%tl6838269141%_)
                                                    (let ((_%__splice8361683617%_
                                                           (gx#syntax-split-splice->vector
                                                            _%tl6838269141%_
                                                            '0)))
                                                      (let ((_%tl6842868724%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice8361683617%_ '1)))
                    (_%target6842668721%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice8361683617%_ '0))))
                (if (gx#stx-null? _%tl6842868724%_)
                    (_%__match8374483745%_
                     _%e6836269074%_
                     _%hd6836369078%_
                     _%tl6836469081%_
                     _%e6836569084%_
                     _%hd6836669088%_
                     _%tl6836769091%_
                     _%e6836869094%_
                     _%hd6836969098%_
                     _%tl6837069101%_
                     _%e6837169104%_
                     _%hd6837269108%_
                     _%tl6837369111%_
                     _%e6837469114%_
                     _%hd6837569118%_
                     _%tl6837669121%_
                     _%e6837769124%_
                     _%hd6837869128%_
                     _%tl6837969131%_
                     _%e6838069134%_
                     _%hd6838169138%_
                     _%tl6838269141%_
                     _%__splice8361683617%_
                     _%target6842668721%_
                     _%tl6842868724%_)
                    (_%__kont8361883619%_
                     _%tl6837969131%_
                     _%hd6837869128%_
                     _%hd6837569118%_
                     _%hd6837269108%_
                     _%hd6836969098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont8361883619%_
                                                     _%tl6837969131%_
                                                     _%hd6837869128%_
                                                     _%hd6837569118%_
                                                     _%hd6837269108%_
                                                     _%hd6836969098%_))
                                                (_%__kont8361883619%_
                                                 _%tl6837969131%_
                                                 _%hd6837869128%_
                                                 _%hd6837569118%_
                                                 _%hd6837269108%_
                                                 _%hd6836969098%_)))
                                        (_%__kont8361883619%_
                                         _%tl6837969131%_
                                         _%hd6837869128%_
                                         _%hd6837569118%_
                                         _%hd6837269108%_
                                         _%hd6836969098%_))))
                                (_%__kont8361883619%_
                                 _%tl6837969131%_
                                 _%hd6837869128%_
                                 _%hd6837569118%_
                                 _%hd6837269108%_
                                 _%hd6836969098%_))))
                        (let () (declare (not safe)) (_%g6835368482%_)))
                    (let () (declare (not safe)) (_%g6835368482%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g6835368482%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g6835368482%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g6835368482%_)))))
                            (let () (declare (not safe)) (_%g6835368482%_)))))
                    (let () (declare (not safe)) (_%g6835368482%_)))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#with-receiver|
      (lambda (_%stx69672%_)
        (let* ((_%g6967569693%_
                (lambda (_%g6967669689%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g6967669689%_)))
               (_%g6967469779%_
                (lambda (_%g6967669697%_)
                  (if (gx#stx-pair? _%g6967669697%_)
                      (let ((_%e6967969700%_ (gx#syntax-e _%g6967669697%_)))
                        (let ((_%hd6968069704%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e6967969700%_)))
                              (_%tl6968169707%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e6967969700%_))))
                          (if (gx#stx-pair? _%tl6968169707%_)
                              (let ((_%e6968269710%_
                                     (gx#syntax-e _%tl6968169707%_)))
                                (let ((_%hd6968369714%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e6968269710%_)))
                                      (_%tl6968469717%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e6968269710%_))))
                                  (if (gx#stx-pair? _%tl6968469717%_)
                                      (let ((_%e6968569720%_
                                             (gx#syntax-e _%tl6968469717%_)))
                                        (let ((_%hd6968669724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6968569720%_)))
                                              (_%tl6968769727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6968569720%_))))
                                          (if (gx#stx-null? _%tl6968769727%_)
                                              ((lambda (_%L69730%_ _%L69732%_)
                                                 (let* ((_%g6974869756%_
                                                         (lambda (_%g6974969752%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g6974969752%_)))
                                                        (_%g6974769775%_
                                                         (lambda (_%g6974969760%_)
                                                           ((lambda (_%L69763%_)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin-annotation)
                            (cons (cons (gx#datum->syntax '#f '@receiver)
                                        (cons _%L69763%_ '()))
                                  (cons _%L69730%_ '()))))
                    _%g6974969760%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g6974769775%_
                                                    (gx#core-quote-syntax
                                                     _%L69732%_))))
                                               _%hd6968669724%_
                                               _%hd6968369714%_)
                                              (_%g6967569693%_
                                               _%g6967669697%_))))
                                      (_%g6967569693%_ _%g6967669697%_))))
                              (_%g6967569693%_ _%g6967669697%_))))
                      (_%g6967569693%_ _%g6967669697%_)))))
          (_%g6967469779%_ _%stx69672%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#let/c|
      (lambda (_%stx69783%_)
        (let* ((_%__stx8379383794%_ _%stx69783%_)
               (_%g6978869884%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8379383794%_))))
          (let ((_%__kont8379683797%_
                 (lambda (_%L70231%_
                          _%L70233%_
                          _%L70234%_
                          _%L70235%_
                          _%L70236%_)
                   (let* ((_%g7026670274%_
                           (lambda (_%g7026770270%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g7026770270%_)))
                          (_%g7026570301%_
                           (lambda (_%g7026770278%_)
                             ((lambda (_%L70281%_)
                                (cons (cons (gx#datum->syntax '#f 'letrec)
                                            (cons (cons (cons _%L70236%_
                                                              (cons _%L70281%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons _%L70236%_ '())))
                                      (foldr (lambda (_%g7029270295%_
                                                      _%g7029370298%_)
                                               (cons _%g7029270295%_
                                                     _%g7029370298%_))
                                             '()
                                             _%L70234%_)))
                              _%g7026770278%_))))
                     (_%g7026570301%_
                      (gx#stx-wrap-source
                       (cons (gx#datum->syntax '#f 'lambda/c)
                             (cons (foldr (lambda (_%g7030470309%_
                                                   _%g7030570312%_)
                                            (cons _%g7030470309%_
                                                  _%g7030570312%_))
                                          '()
                                          _%L70235%_)
                                   (cons (gx#datum->syntax '#f '=>)
                                         (cons _%L70233%_
                                               (foldr (lambda (_%g7030670315%_
                                                               _%g7030770318%_)
                                                        (cons _%g7030670315%_
                                                              _%g7030770318%_))
                                                      '()
                                                      _%L70231%_)))))
                       (gx#stx-source _%stx69783%_))))))
                (_%__kont8380283803%_
                 (lambda (_%L70034%_ _%L70036%_ _%L70037%_ _%L70038%_)
                   (cons (gx#datum->syntax '#f 'let/c)
                         (cons _%L70038%_
                               (cons (begin
                                       (gx#syntax-check-splice-targets
                                        _%L70036%_
                                        _%L70037%_)
                                       (foldr (lambda (_%g7007070076%_
                                                       _%g7007170079%_
                                                       _%g7007270081%_)
                                                (cons (cons _%g7007170079%_
                                                            (cons _%g7007070076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              _%g7007270081%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L70036%_
                                              _%L70037%_))
                                     (cons (gx#datum->syntax '#f '=>)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 (foldr (lambda (_%g7007370084%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g7007470087%_)
                  (cons _%g7007370084%_ _%g7007470087%_))
                '()
                _%L70034%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                (_%__kont8380883809%_
                 (lambda (_%L69901%_)
                   (cons (gx#datum->syntax '#f 'let) _%L69901%_))))
            (let* ((_%__match8386283863%_
                    (lambda (_%e6984069920%_
                             _%hd6984169924%_
                             _%tl6984269927%_
                             _%e6984369930%_
                             _%hd6984469934%_
                             _%tl6984569937%_
                             _%e6984669940%_
                             _%hd6984769944%_
                             _%tl6984869947%_
                             _%__splice8380483805%_
                             _%target6984969950%_
                             _%tl6985169953%_)
                      (letrec ((_%loop6985269956%_
                                (lambda (_%hd6985069960%_
                                         _%init6985669963%_
                                         _%var6985769965%_)
                                  (if (gx#stx-pair? _%hd6985069960%_)
                                      (let ((_%e6985369968%_
                                             (gx#syntax-e _%hd6985069960%_)))
                                        (let ((_%lp-tl6985569975%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6985369968%_)))
                                              (_%lp-hd6985469972%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6985369968%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd6985469972%_)
                                              (let ((_%e6986069978%_
                                                     (gx#syntax-e
                                                      _%lp-hd6985469972%_)))
                                                (let ((_%tl6986269985%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6986069978%_)))
                                                      (_%hd6986169982%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6986069978%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl6986269985%_)
                                                      (let ((_%e6986369988%_
                                                             (gx#syntax-e
                                                              _%tl6986269985%_)))
                                                        (let ((_%tl6986569995%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6986369988%_)))
                      (_%hd6986469992%_
                       (let () (declare (not safe)) (##car _%e6986369988%_))))
                  (if (gx#stx-null? _%tl6986569995%_)
                      (_%loop6985269956%_
                       _%lp-tl6985569975%_
                       (cons _%hd6986469992%_ _%init6985669963%_)
                       (cons _%hd6986169982%_ _%var6985769965%_))
                      (_%__kont8380883809%_ _%tl6984269927%_))))
              (_%__kont8380883809%_ _%tl6984269927%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8380883809%_
                                               _%tl6984269927%_))))
                                      (let ((_%var6985970001%_
                                             (reverse _%var6985769965%_))
                                            (_%init6985869998%_
                                             (reverse _%init6985669963%_)))
                                        (if (gx#stx-pair/null?
                                             _%tl6984869947%_)
                                            (let ((_%__splice8380683807%_
                                                   (gx#syntax-split-splice->vector
                                                    _%tl6984869947%_
                                                    '0)))
                                              (let ((_%tl6986870007%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8380683807%_
                                                        '1)))
                                                    (_%target6986670004%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice8380683807%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%tl6986870007%_)
                                                    (letrec ((_%loop6986970010%_
                                                              (lambda (_%hd6986770014%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%body6987370017%_)
                        (if (gx#stx-pair? _%hd6986770014%_)
                            (let ((_%e6987070020%_
                                   (gx#syntax-e _%hd6986770014%_)))
                              (let ((_%lp-tl6987270027%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e6987070020%_)))
                                    (_%lp-hd6987170024%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e6987070020%_))))
                                (_%loop6986970010%_
                                 _%lp-tl6987270027%_
                                 (cons _%lp-hd6987170024%_
                                       _%body6987370017%_))))
                            (let ((_%body6987470030%_
                                   (reverse _%body6987370017%_)))
                              (let ((_%L70034%_ _%body6987470030%_)
                                    (_%L70036%_ _%init6985869998%_)
                                    (_%L70037%_ _%var6985970001%_)
                                    (_%L70038%_ _%hd6984469934%_))
                                (if (and (gx#identifier? _%L70038%_)
                                         (|gerbil/core/contract~TypedDefinitions[1]#is-signature?|
                                          (foldr (lambda (_%g7006270065%_
                                                          _%g7006370068%_)
                                                   (cons _%g7006270065%_
                                                         _%g7006370068%_))
                                                 '()
                                                 _%L70037%_)))
                                    (_%__kont8380283803%_
                                     _%L70034%_
                                     _%L70036%_
                                     _%L70037%_
                                     _%L70038%_)
                                    (_%__kont8380883809%_
                                     _%tl6984269927%_))))))))
              (_%loop6986970010%_ _%target6986670004%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont8380883809%_
                                                     _%tl6984269927%_))))
                                            (_%__kont8380883809%_
                                             _%tl6984269927%_)))))))
                        (_%loop6985269956%_ _%target6984969950%_ '() '()))))
                   (_%__match8383683837%_
                    (lambda (_%e6979570097%_
                             _%hd6979670101%_
                             _%tl6979770104%_
                             _%e6979870107%_
                             _%hd6979970111%_
                             _%tl6980070114%_
                             _%e6980170117%_
                             _%hd6980270121%_
                             _%tl6980370124%_
                             _%__splice8379883799%_
                             _%target6980470127%_
                             _%tl6980670130%_)
                      (letrec ((_%loop6980770133%_
                                (lambda (_%hd6980570137%_
                                         _%init6981170140%_
                                         _%var6981270142%_)
                                  (if (gx#stx-pair? _%hd6980570137%_)
                                      (let ((_%e6980870145%_
                                             (gx#syntax-e _%hd6980570137%_)))
                                        (let ((_%lp-tl6981070152%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e6980870145%_)))
                                              (_%lp-hd6980970149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e6980870145%_))))
                                          (if (gx#stx-pair?
                                               _%lp-hd6980970149%_)
                                              (let ((_%e6981570155%_
                                                     (gx#syntax-e
                                                      _%lp-hd6980970149%_)))
                                                (let ((_%tl6981770162%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e6981570155%_)))
                                                      (_%hd6981670159%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e6981570155%_))))
                                                  (if (gx#stx-pair?
                                                       _%tl6981770162%_)
                                                      (let ((_%e6981870165%_
                                                             (gx#syntax-e
                                                              _%tl6981770162%_)))
                                                        (let ((_%tl6982070172%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e6981870165%_)))
                      (_%hd6981970169%_
                       (let () (declare (not safe)) (##car _%e6981870165%_))))
                  (if (gx#stx-null? _%tl6982070172%_)
                      (_%loop6980770133%_
                       _%lp-tl6981070152%_
                       (cons _%hd6981970169%_ _%init6981170140%_)
                       (cons _%hd6981670159%_ _%var6981270142%_))
                      (_%__match8386283863%_
                       _%e6979570097%_
                       _%hd6979670101%_
                       _%tl6979770104%_
                       _%e6979870107%_
                       _%hd6979970111%_
                       _%tl6980070114%_
                       _%e6980170117%_
                       _%hd6980270121%_
                       _%tl6980370124%_
                       _%__splice8379883799%_
                       _%target6980470127%_
                       _%tl6980670130%_))))
              (_%__match8386283863%_
               _%e6979570097%_
               _%hd6979670101%_
               _%tl6979770104%_
               _%e6979870107%_
               _%hd6979970111%_
               _%tl6980070114%_
               _%e6980170117%_
               _%hd6980270121%_
               _%tl6980370124%_
               _%__splice8379883799%_
               _%target6980470127%_
               _%tl6980670130%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__match8386283863%_
                                               _%e6979570097%_
                                               _%hd6979670101%_
                                               _%tl6979770104%_
                                               _%e6979870107%_
                                               _%hd6979970111%_
                                               _%tl6980070114%_
                                               _%e6980170117%_
                                               _%hd6980270121%_
                                               _%tl6980370124%_
                                               _%__splice8379883799%_
                                               _%target6980470127%_
                                               _%tl6980670130%_))))
                                      (let ((_%var6981470178%_
                                             (reverse _%var6981270142%_))
                                            (_%init6981370175%_
                                             (reverse _%init6981170140%_)))
                                        (if (gx#stx-pair? _%tl6980370124%_)
                                            (let ((_%e6982170181%_
                                                   (gx#syntax-e
                                                    _%tl6980370124%_)))
                                              (let ((_%tl6982370188%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e6982170181%_)))
                                                    (_%hd6982270185%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e6982170181%_))))
                                                (if (gx#identifier?
                                                     _%hd6982270185%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypedDefinitions[1]#_g85152_|
                                                         _%hd6982270185%_)
                                                        (if (gx#stx-pair?
                                                             _%tl6982370188%_)
                                                            (let ((_%e6982470191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl6982370188%_)))
                      (let ((_%tl6982670198%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e6982470191%_)))
                            (_%hd6982570195%_
                             (let ()
                               (declare (not safe))
                               (##car _%e6982470191%_))))
                        (if (gx#stx-pair/null? _%tl6982670198%_)
                            (let ((_%__splice8380083801%_
                                   (gx#syntax-split-splice->vector
                                    _%tl6982670198%_
                                    '0)))
                              (let ((_%tl6982970204%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8380083801%_
                                        '1)))
                                    (_%target6982770201%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice8380083801%_
                                        '0))))
                                (if (gx#stx-null? _%tl6982970204%_)
                                    (letrec ((_%loop6983070207%_
                                              (lambda (_%hd6982870211%_
                                                       _%body6983470214%_)
                                                (if (gx#stx-pair?
                                                     _%hd6982870211%_)
                                                    (let ((_%e6983170217%_
                                                           (gx#syntax-e
                                                            _%hd6982870211%_)))
                                                      (let ((_%lp-tl6983370224%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e6983170217%_)))
                    (_%lp-hd6983270221%_
                     (let () (declare (not safe)) (##car _%e6983170217%_))))
                (_%loop6983070207%_
                 _%lp-tl6983370224%_
                 (cons _%lp-hd6983270221%_ _%body6983470214%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%body6983570227%_
                                                           (reverse _%body6983470214%_)))
                                                      (let ((_%L70231%_
                                                             _%body6983570227%_)
                                                            (_%L70233%_
                                                             _%hd6982570195%_)
                                                            (_%L70234%_
                                                             _%init6981370175%_)
                                                            (_%L70235%_
                                                             _%var6981470178%_)
                                                            (_%L70236%_
                                                             _%hd6979970111%_))
                                                        (if (gx#identifier?
                                                             _%L70236%_)
                                                            (_%__kont8379683797%_
                                                             _%L70231%_
                                                             _%L70233%_
                                                             _%L70234%_
                                                             _%L70235%_
                                                             _%L70236%_)
                                                            (_%__match8386283863%_
                                                             _%e6979570097%_
                                                             _%hd6979670101%_
                                                             _%tl6979770104%_
                                                             _%e6979870107%_
                                                             _%hd6979970111%_
                                                             _%tl6980070114%_
                                                             _%e6980170117%_
                                                             _%hd6980270121%_
                                                             _%tl6980370124%_
                                                             _%__splice8379883799%_
                                                             _%target6980470127%_
                                                             _%tl6980670130%_))))))))
                                      (_%loop6983070207%_
                                       _%target6982770201%_
                                       '()))
                                    (_%__match8386283863%_
                                     _%e6979570097%_
                                     _%hd6979670101%_
                                     _%tl6979770104%_
                                     _%e6979870107%_
                                     _%hd6979970111%_
                                     _%tl6980070114%_
                                     _%e6980170117%_
                                     _%hd6980270121%_
                                     _%tl6980370124%_
                                     _%__splice8379883799%_
                                     _%target6980470127%_
                                     _%tl6980670130%_))))
                            (_%__match8386283863%_
                             _%e6979570097%_
                             _%hd6979670101%_
                             _%tl6979770104%_
                             _%e6979870107%_
                             _%hd6979970111%_
                             _%tl6980070114%_
                             _%e6980170117%_
                             _%hd6980270121%_
                             _%tl6980370124%_
                             _%__splice8379883799%_
                             _%target6980470127%_
                             _%tl6980670130%_))))
                    (_%__match8386283863%_
                     _%e6979570097%_
                     _%hd6979670101%_
                     _%tl6979770104%_
                     _%e6979870107%_
                     _%hd6979970111%_
                     _%tl6980070114%_
                     _%e6980170117%_
                     _%hd6980270121%_
                     _%tl6980370124%_
                     _%__splice8379883799%_
                     _%target6980470127%_
                     _%tl6980670130%_))
                (_%__match8386283863%_
                 _%e6979570097%_
                 _%hd6979670101%_
                 _%tl6979770104%_
                 _%e6979870107%_
                 _%hd6979970111%_
                 _%tl6980070114%_
                 _%e6980170117%_
                 _%hd6980270121%_
                 _%tl6980370124%_
                 _%__splice8379883799%_
                 _%target6980470127%_
                 _%tl6980670130%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match8386283863%_
                                                     _%e6979570097%_
                                                     _%hd6979670101%_
                                                     _%tl6979770104%_
                                                     _%e6979870107%_
                                                     _%hd6979970111%_
                                                     _%tl6980070114%_
                                                     _%e6980170117%_
                                                     _%hd6980270121%_
                                                     _%tl6980370124%_
                                                     _%__splice8379883799%_
                                                     _%target6980470127%_
                                                     _%tl6980670130%_))))
                                            (_%__match8386283863%_
                                             _%e6979570097%_
                                             _%hd6979670101%_
                                             _%tl6979770104%_
                                             _%e6979870107%_
                                             _%hd6979970111%_
                                             _%tl6980070114%_
                                             _%e6980170117%_
                                             _%hd6980270121%_
                                             _%tl6980370124%_
                                             _%__splice8379883799%_
                                             _%target6980470127%_
                                             _%tl6980670130%_)))))))
                        (_%loop6980770133%_ _%target6980470127%_ '() '())))))
              (if (gx#stx-pair? _%__stx8379383794%_)
                  (let ((_%e6979570097%_ (gx#syntax-e _%__stx8379383794%_)))
                    (let ((_%tl6979770104%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e6979570097%_)))
                          (_%hd6979670101%_
                           (let ()
                             (declare (not safe))
                             (##car _%e6979570097%_))))
                      (if (gx#stx-pair? _%tl6979770104%_)
                          (let ((_%e6979870107%_
                                 (gx#syntax-e _%tl6979770104%_)))
                            (let ((_%tl6980070114%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e6979870107%_)))
                                  (_%hd6979970111%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e6979870107%_))))
                              (if (gx#stx-pair? _%tl6980070114%_)
                                  (let ((_%e6980170117%_
                                         (gx#syntax-e _%tl6980070114%_)))
                                    (let ((_%tl6980370124%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e6980170117%_)))
                                          (_%hd6980270121%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e6980170117%_))))
                                      (if (gx#stx-pair/null? _%hd6980270121%_)
                                          (let ((_%__splice8379883799%_
                                                 (gx#syntax-split-splice->vector
                                                  _%hd6980270121%_
                                                  '0)))
                                            (let ((_%tl6980670130%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8379883799%_
                                                      '1)))
                                                  (_%target6980470127%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8379883799%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl6980670130%_)
                                                  (_%__match8383683837%_
                                                   _%e6979570097%_
                                                   _%hd6979670101%_
                                                   _%tl6979770104%_
                                                   _%e6979870107%_
                                                   _%hd6979970111%_
                                                   _%tl6980070114%_
                                                   _%e6980170117%_
                                                   _%hd6980270121%_
                                                   _%tl6980370124%_
                                                   _%__splice8379883799%_
                                                   _%target6980470127%_
                                                   _%tl6980670130%_)
                                                  (_%__kont8380883809%_
                                                   _%tl6979770104%_))))
                                          (_%__kont8380883809%_
                                           _%tl6979770104%_))))
                                  (_%__kont8380883809%_ _%tl6979770104%_))))
                          (_%__kont8380883809%_ _%tl6979770104%_))))
                  (let () (declare (not safe)) (_%g6978869884%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defclass/c|
      (lambda (_%stx70329%_)
        (letrec ((_%generate70332%_
                  (lambda (_%hd77503%_ _%slots77505%_ _%body77506%_)
                    (let* ((_%__stx8387183872%_ _%hd77503%_)
                           (_%g7751077532%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8387183872%_))))
                      (let ((_%__kont8387483875%_
                             (lambda (_%L77608%_ _%L77610%_)
                               (_%generate-defclass70353%_
                                _%L77610%_
                                (foldr (lambda (_%g7763277635%_
                                                _%g7763377638%_)
                                         (cons _%g7763277635%_
                                               _%g7763377638%_))
                                       '()
                                       _%L77608%_)
                                _%slots77505%_
                                _%body77506%_)))
                            (_%__kont8387883879%_
                             (lambda (_%L77550%_)
                               (_%generate-defclass70353%_
                                _%L77550%_
                                '()
                                _%slots77505%_
                                _%body77506%_)))
                            (_%__kont8388083881%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"bad class head"
                                _%stx70329%_
                                _%hd77503%_))))
                        (let* ((_%g7750877561%_
                                (lambda ()
                                  (let ((_%L77550%_ _%__stx8387183872%_))
                                    (if (gx#identifier? _%L77550%_)
                                        (_%__kont8387883879%_ _%L77550%_)
                                        (_%__kont8388083881%_)))))
                               (_%__match8389683897%_
                                (lambda (_%e7751477568%_
                                         _%hd7751577572%_
                                         _%tl7751677575%_
                                         _%__splice8387683877%_
                                         _%target7751777578%_
                                         _%tl7751977581%_)
                                  (letrec ((_%loop7752077584%_
                                            (lambda (_%hd7751877588%_
                                                     _%super7752477591%_)
                                              (if (gx#stx-pair?
                                                   _%hd7751877588%_)
                                                  (let ((_%e7752177594%_
                                                         (gx#syntax-e
                                                          _%hd7751877588%_)))
                                                    (let ((_%lp-tl7752377601%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7752177594%_)))
                                                          (_%lp-hd7752277598%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7752177594%_))))
                                                      (_%loop7752077584%_
                                                       _%lp-tl7752377601%_
                                                       (cons _%lp-hd7752277598%_
                                                             _%super7752477591%_))))
                                                  (let ((_%super7752577604%_
                                                         (reverse _%super7752477591%_)))
                                                    (let ((_%L77608%_
                                                           _%super7752577604%_)
                                                          (_%L77610%_
                                                           _%hd7751577572%_))
                                                      (if (and (gx#identifier?
                                                                _%L77610%_)
                                                               (andmap gerbil/core/mop~MOP-2#syntax-local-class-type-info?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr (lambda (_%g7762477627%_ _%g7762577630%_)
                                        (cons _%g7762477627%_ _%g7762577630%_))
                                      '()
                                      _%L77608%_)))
                  (_%__kont8387483875%_ _%L77608%_ _%L77610%_)
                  (let () (declare (not safe)) (_%g7750877561%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%loop7752077584%_
                                     _%target7751777578%_
                                     '())))))
                          (if (gx#stx-pair? _%__stx8387183872%_)
                              (let ((_%e7751477568%_
                                     (gx#syntax-e _%__stx8387183872%_)))
                                (let ((_%tl7751677575%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7751477568%_)))
                                      (_%hd7751577572%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7751477568%_))))
                                  (if (gx#stx-pair/null? _%tl7751677575%_)
                                      (let ((_%__splice8387683877%_
                                             (gx#syntax-split-splice->vector
                                              _%tl7751677575%_
                                              '0)))
                                        (let ((_%tl7751977581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8387683877%_
                                                  '1)))
                                              (_%target7751777578%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice8387683877%_
                                                  '0))))
                                          (if (gx#stx-null? _%tl7751977581%_)
                                              (_%__match8389683897%_
                                               _%e7751477568%_
                                               _%hd7751577572%_
                                               _%tl7751677575%_
                                               _%__splice8387683877%_
                                               _%target7751777578%_
                                               _%tl7751977581%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g7750877561%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g7750877561%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g7750877561%_))))))))
                 (_%check-typedef-body!70334%_
                  (lambda (_%body77494%_)
                    (letrec ((_%body-opt?77497%_
                              (lambda (_%key77500%_)
                                (let ((__tmp85153 (gx#stx-e _%key77500%_)))
                                  (declare (not safe))
                                  (##memq __tmp85153
                                          '(id:
                                            struct:
                                            name:
                                            constructor:
                                            transparent:
                                            final:
                                            print:
                                            equal:
                                            metaclass:))))))
                      (if (gx#stx-plist? _%body77494%_ _%body-opt?77497%_)
                          '#!void
                          (gx#raise-syntax-error
                           '#f
                           '"invalid defclass body"
                           _%stx70329%_
                           _%body77494%_)))))
                 (_%slot-name70335%_
                  (lambda (_%slot-spec77491%_)
                    (gx#stx-e
                     (if (gx#identifier? _%slot-spec77491%_)
                         _%slot-spec77491%_
                         (gx#stx-car _%slot-spec77491%_)))))
                 (_%slot-contract70336%_
                  (lambda (_%slot-spec77372%_)
                    (let* ((_%__stx8389983900%_ _%slot-spec77372%_)
                           (_%g7737777398%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8389983900%_))))
                      (let ((_%__kont8390283903%_ (lambda (_%L77478%_) '#f))
                            (_%__kont8390483905%_
                             (lambda (_%L77456%_ _%L77458%_) '#f))
                            (_%__kont8390683907%_
                             (lambda (_%L77415%_ _%L77417%_) _%L77415%_)))
                        (let* ((_%g7737577471%_
                                (lambda ()
                                  (if (gx#stx-pair? _%__stx8389983900%_)
                                      (let ((_%e7738277436%_
                                             (gx#syntax-e
                                              _%__stx8389983900%_)))
                                        (let ((_%tl7738477443%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7738277436%_)))
                                              (_%hd7738377440%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7738277436%_))))
                                          (if (gx#stx-pair? _%tl7738477443%_)
                                              (let ((_%e7738577446%_
                                                     (gx#syntax-e
                                                      _%tl7738477443%_)))
                                                (let ((_%tl7738777453%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e7738577446%_)))
                                                      (_%hd7738677450%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e7738577446%_))))
                                                  (if (gx#stx-null?
                                                       _%tl7738777453%_)
                                                      (_%__kont8390483905%_
                                                       _%hd7738677450%_
                                                       _%hd7738377440%_)
                                                      (_%__kont8390683907%_
                                                       _%tl7738477443%_
                                                       _%hd7738377440%_))))
                                              (_%__kont8390683907%_
                                               _%tl7738477443%_
                                               _%hd7738377440%_))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g7737777398%_)))))
                               (_%L77478%_ _%__stx8389983900%_))
                          (if (gx#identifier? _%L77478%_)
                              (_%__kont8390283903%_ _%L77478%_)
                              (let ()
                                (declare (not safe))
                                (_%g7737577471%_))))))))
                 (_%slot-contract-normalize70337%_
                  (lambda (_%slot-spec77361%_)
                    (let ((_%contract7736377365%_
                           (_%slot-contract70336%_ _%slot-spec77361%_)))
                      (if _%contract7736377365%_
                          (let ((_%contract77369%_ _%contract7736377365%_))
                            (_%contract-normalize70338%_ _%contract77369%_))
                          '#f))))
                 (_%contract-normalize70338%_
                  (lambda (_%contract77106%_)
                    (let* ((_%__stx8393183932%_ _%contract77106%_)
                           (_%g7711277156%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8393183932%_))))
                      (let ((_%__kont8393483935%_
                             (lambda (_%L77332%_)
                               (_%contract-normalize70338%_
                                (foldr (lambda (_%g7734877351%_
                                                _%g7734977354%_)
                                         (cons _%g7734877351%_
                                               _%g7734977354%_))
                                       '()
                                       _%L77332%_))))
                            (_%__kont8393883939%_
                             (lambda (_%L77256%_ _%L77258%_)
                               (cons (gx#datum->syntax '#f ':~)
                                     (cons (cons (gx#datum->syntax '#f '?)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'or)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'not)
                           (cons _%L77258%_ '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (gx#datum->syntax '#f ':?)
                                                 (cons _%L77256%_ '()))))))
                            (_%__kont8394083941%_ (lambda (_%L77194%_) '#f))
                            (_%__kont8394283943%_
                             (lambda () _%contract77106%_)))
                        (let* ((_%g7710977275%_
                                (lambda ()
                                  (if (gx#stx-pair? _%__stx8393183932%_)
                                      (let ((_%e7713277216%_
                                             (gx#syntax-e
                                              _%__stx8393183932%_)))
                                        (let ((_%tl7713477223%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7713277216%_)))
                                              (_%hd7713377220%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7713277216%_))))
                                          (if (gx#identifier? _%hd7713377220%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypedDefinitions[1]#_g85154_|
                                                   _%hd7713377220%_)
                                                  (if (gx#stx-pair?
                                                       _%tl7713477223%_)
                                                      (let ((_%e7713577226%_
                                                             (gx#syntax-e
                                                              _%tl7713477223%_)))
                                                        (let ((_%tl7713777233%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%e7713577226%_)))
                      (_%hd7713677230%_
                       (let () (declare (not safe)) (##car _%e7713577226%_))))
                  (if (gx#stx-pair? _%tl7713777233%_)
                      (let ((_%e7713877236%_ (gx#syntax-e _%tl7713777233%_)))
                        (let ((_%tl7714077243%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7713877236%_)))
                              (_%hd7713977240%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7713877236%_))))
                          (if (gx#identifier? _%hd7713977240%_)
                              (if (gx#free-identifier=?
                                   |gerbil/core/contract~TypedDefinitions[1]#_g85155_|
                                   _%hd7713977240%_)
                                  (if (gx#stx-pair? _%tl7714077243%_)
                                      (let ((_%e7714177246%_
                                             (gx#syntax-e _%tl7714077243%_)))
                                        (let ((_%tl7714377253%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7714177246%_)))
                                              (_%hd7714277250%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7714177246%_))))
                                          (if (gx#stx-null? _%tl7714377253%_)
                                              (_%__kont8393883939%_
                                               _%hd7714277250%_
                                               _%hd7713677230%_)
                                              (_%__kont8394283943%_))))
                                      (_%__kont8394283943%_))
                                  (_%__kont8394283943%_))
                              (_%__kont8394283943%_))))
                      (_%__kont8394283943%_))))
              (_%__kont8394283943%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g85156_|
                                                       _%hd7713377220%_)
                                                      (if (gx#stx-pair?
                                                           _%tl7713477223%_)
                                                          (let ((_%e7714877184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl7713477223%_)))
                    (let ((_%tl7715077191%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7714877184%_)))
                          (_%hd7714977188%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7714877184%_))))
                      (if (gx#stx-null? _%tl7715077191%_)
                          (_%__kont8394083941%_ _%hd7714977188%_)
                          (_%__kont8394283943%_))))
                  (_%__kont8394283943%_))
              (_%__kont8394283943%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont8394283943%_))))
                                      (_%__kont8394283943%_))))
                               (_%__match8397083971%_
                                (lambda (_%__splice8393683937%_
                                         _%target7711577282%_
                                         _%tl7711777285%_
                                         _%e7712477288%_
                                         _%hd7712577292%_
                                         _%tl7712677295%_
                                         _%e7712777298%_
                                         _%hd7712877302%_
                                         _%tl7712977305%_)
                                  (letrec ((_%loop7711877308%_
                                            (lambda (_%hd7711677312%_
                                                     _%pre7712277315%_)
                                              (if (gx#stx-pair?
                                                   _%hd7711677312%_)
                                                  (let ((_%e7711977318%_
                                                         (gx#syntax-e
                                                          _%hd7711677312%_)))
                                                    (let ((_%lp-tl7712177325%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7711977318%_)))
                                                          (_%lp-hd7712077322%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7711977318%_))))
                                                      (_%loop7711877308%_
                                                       _%lp-tl7712177325%_
                                                       (cons _%lp-hd7712077322%_
                                                             _%pre7712277315%_))))
                                                  (let ((_%pre7712377328%_
                                                         (reverse _%pre7712277315%_)))
                                                    (_%__kont8393483935%_
                                                     _%pre7712377328%_))))))
                                    (_%loop7711877308%_
                                     _%target7711577282%_
                                     '())))))
                          (if (gx#stx-pair/null? _%__stx8393183932%_)
                              (if (let ((__tmp85157
                                         (gx#stx-length _%__stx8393183932%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp85157 '2))
                                  (let ((_%__splice8393683937%_
                                         (gx#syntax-split-splice->vector
                                          _%__stx8393183932%_
                                          '2)))
                                    (let ((_%tl7711777285%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8393683937%_
                                              '1)))
                                          (_%target7711577282%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice8393683937%_
                                              '0))))
                                      (if (gx#stx-pair? _%tl7711777285%_)
                                          (let ((_%e7712477288%_
                                                 (gx#syntax-e
                                                  _%tl7711777285%_)))
                                            (let ((_%tl7712677295%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7712477288%_)))
                                                  (_%hd7712577292%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7712477288%_))))
                                              (if (gx#identifier?
                                                   _%hd7712577292%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g85158_|
                                                       _%hd7712577292%_)
                                                      (if (gx#stx-pair?
                                                           _%tl7712677295%_)
                                                          (let ((_%e7712777298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl7712677295%_)))
                    (let ((_%tl7712977305%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7712777298%_)))
                          (_%hd7712877302%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7712777298%_))))
                      (if (gx#stx-null? _%tl7712977305%_)
                          (_%__match8397083971%_
                           _%__splice8393683937%_
                           _%target7711577282%_
                           _%tl7711777285%_
                           _%e7712477288%_
                           _%hd7712577292%_
                           _%tl7712677295%_
                           _%e7712777298%_
                           _%hd7712877302%_
                           _%tl7712977305%_)
                          (let () (declare (not safe)) (_%g7710977275%_)))))
                  (let () (declare (not safe)) (_%g7710977275%_)))
              (let () (declare (not safe)) (_%g7710977275%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g7710977275%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g7710977275%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g7710977275%_)))
                              (let ()
                                (declare (not safe))
                                (_%g7710977275%_))))))))
                 (_%slot-contract-type70339%_
                  (lambda (_%slot-spec77095%_)
                    (let ((_%contract7709777099%_
                           (_%slot-contract70336%_ _%slot-spec77095%_)))
                      (if _%contract7709777099%_
                          (let ((_%contract77103%_ _%contract7709777099%_))
                            (_%contract-type70340%_ _%contract77103%_))
                          '#f))))
                 (_%contract-type70340%_
                  (lambda (_%contract76903%_)
                    (let* ((_%__stx8402584026%_ _%contract76903%_)
                           (_%g7690876940%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8402584026%_))))
                      (let ((_%__kont8402884029%_
                             (lambda (_%L77062%_ _%L77064%_ _%L77065%_)
                               _%L77064%_))
                            (_%__kont8403084031%_
                             (lambda (_%L76998%_
                                      _%L77000%_
                                      _%L77001%_
                                      _%L77002%_)
                               _%L77000%_))
                            (_%__kont8403284033%_ (lambda () '#f)))
                        (let* ((_%__match8407484075%_
                                (lambda (_%e7692376958%_
                                         _%hd7692476962%_
                                         _%tl7692576965%_
                                         _%e7692676968%_
                                         _%hd7692776972%_
                                         _%tl7692876975%_
                                         _%e7692976978%_
                                         _%hd7693076982%_
                                         _%tl7693176985%_
                                         _%e7693276988%_
                                         _%hd7693376992%_
                                         _%tl7693476995%_)
                                  (let ((_%L76998%_ _%tl7693476995%_)
                                        (_%L77000%_ _%hd7693376992%_)
                                        (_%L77001%_ _%hd7693076982%_)
                                        (_%L77002%_ _%hd7692776972%_))
                                    (if (and (gx#identifier? _%L77001%_)
                                             (or (gx#free-identifier=?
                                                  _%L77001%_
                                                  (gx#datum->syntax '#f ':))
                                                 (gx#free-identifier=?
                                                  _%L77001%_
                                                  (gx#datum->syntax '#f ':?))
                                                 (gx#free-identifier=?
                                                  _%L77001%_
                                                  (gx#datum->syntax '#f ':-))
                                                 (gx#free-identifier=?
                                                  _%L77001%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   '::-))))
                                        (_%__kont8403084031%_
                                         _%L76998%_
                                         _%L77000%_
                                         _%L77001%_
                                         _%L77002%_)
                                        (_%__kont8403284033%_)))))
                               (_%__match8404684047%_
                                (lambda (_%e7691377042%_
                                         _%hd7691477046%_
                                         _%tl7691577049%_
                                         _%e7691677052%_
                                         _%hd7691777056%_
                                         _%tl7691877059%_)
                                  (let ((_%L77062%_ _%tl7691877059%_)
                                        (_%L77064%_ _%hd7691777056%_)
                                        (_%L77065%_ _%hd7691477046%_))
                                    (if (and (gx#identifier? _%L77065%_)
                                             (or (gx#free-identifier=?
                                                  _%L77065%_
                                                  (gx#datum->syntax '#f ':))
                                                 (gx#free-identifier=?
                                                  _%L77065%_
                                                  (gx#datum->syntax '#f ':?))
                                                 (gx#free-identifier=?
                                                  _%L77065%_
                                                  (gx#datum->syntax '#f ':-))
                                                 (gx#free-identifier=?
                                                  _%L77065%_
                                                  (gx#datum->syntax
                                                   '#f
                                                   '::-))))
                                        (_%__kont8402884029%_
                                         _%L77062%_
                                         _%L77064%_
                                         _%L77065%_)
                                        (if (gx#identifier? _%hd7691477046%_)
                                            (if (gx#free-identifier=?
                                                 |gerbil/core/contract~TypedDefinitions[1]#_g85159_|
                                                 _%hd7691477046%_)
                                                (if (gx#stx-pair?
                                                     _%tl7691877059%_)
                                                    (let ((_%e7692976978%_
                                                           (gx#syntax-e
                                                            _%tl7691877059%_)))
                                                      (let ((_%tl7693176985%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e7692976978%_)))
                    (_%hd7693076982%_
                     (let () (declare (not safe)) (##car _%e7692976978%_))))
                (if (gx#stx-pair? _%tl7693176985%_)
                    (let ((_%e7693276988%_ (gx#syntax-e _%tl7693176985%_)))
                      (let ((_%tl7693476995%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e7693276988%_)))
                            (_%hd7693376992%_
                             (let ()
                               (declare (not safe))
                               (##car _%e7693276988%_))))
                        (_%__match8407484075%_
                         _%e7691377042%_
                         _%hd7691477046%_
                         _%tl7691577049%_
                         _%e7691677052%_
                         _%hd7691777056%_
                         _%tl7691877059%_
                         _%e7692976978%_
                         _%hd7693076982%_
                         _%tl7693176985%_
                         _%e7693276988%_
                         _%hd7693376992%_
                         _%tl7693476995%_)))
                    (_%__kont8403284033%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont8403284033%_))
                                                (_%__kont8403284033%_))
                                            (_%__kont8403284033%_)))))))
                          (if (gx#stx-pair? _%__stx8402584026%_)
                              (let ((_%e7691377042%_
                                     (gx#syntax-e _%__stx8402584026%_)))
                                (let ((_%tl7691577049%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7691377042%_)))
                                      (_%hd7691477046%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7691377042%_))))
                                  (if (gx#stx-pair? _%tl7691577049%_)
                                      (let ((_%e7691677052%_
                                             (gx#syntax-e _%tl7691577049%_)))
                                        (let ((_%tl7691877059%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7691677052%_)))
                                              (_%hd7691777056%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7691677052%_))))
                                          (_%__match8404684047%_
                                           _%e7691377042%_
                                           _%hd7691477046%_
                                           _%tl7691577049%_
                                           _%e7691677052%_
                                           _%hd7691777056%_
                                           _%tl7691877059%_)))
                                      (_%__kont8403284033%_))))
                              (_%__kont8403284033%_)))))))
                 (_%slot-contract-predicate70341%_
                  (lambda (_%slot-spec76892%_)
                    (let ((_%contract7689476896%_
                           (_%slot-contract70336%_ _%slot-spec76892%_)))
                      (if _%contract7689476896%_
                          (let ((_%contract76900%_ _%contract7689476896%_))
                            (_%contract-predicate70342%_ _%contract76900%_))
                          '#f))))
                 (_%contract-predicate70342%_
                  (lambda (_%contract76814%_)
                    (let* ((_%__stx8407784078%_ _%contract76814%_)
                           (_%g7681876833%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8407784078%_))))
                      (let ((_%__kont8408084081%_
                             (lambda (_%L76871%_ _%L76873%_) _%L76873%_))
                            (_%__kont8408284083%_ (lambda () '#f)))
                        (if (gx#stx-pair? _%__stx8407784078%_)
                            (let ((_%e7682276851%_
                                   (gx#syntax-e _%__stx8407784078%_)))
                              (let ((_%tl7682476858%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e7682276851%_)))
                                    (_%hd7682376855%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e7682276851%_))))
                                (if (gx#identifier? _%hd7682376855%_)
                                    (if (gx#free-identifier=?
                                         |gerbil/core/contract~TypedDefinitions[1]#_g85160_|
                                         _%hd7682376855%_)
                                        (if (gx#stx-pair? _%tl7682476858%_)
                                            (let ((_%e7682576861%_
                                                   (gx#syntax-e
                                                    _%tl7682476858%_)))
                                              (let ((_%tl7682776868%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7682576861%_)))
                                                    (_%hd7682676865%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7682576861%_))))
                                                (_%__kont8408084081%_
                                                 _%tl7682776868%_
                                                 _%hd7682676865%_)))
                                            (_%__kont8408284083%_))
                                        (_%__kont8408284083%_))
                                    (_%__kont8408284083%_))))
                            (_%__kont8408284083%_))))))
                 (_%slot-default70343%_
                  (lambda (_%slot-spec76642%_)
                    (let* ((_%__stx8410384104%_ _%slot-spec76642%_)
                           (_%g7664776679%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx8410384104%_))))
                      (let ((_%__kont8410684107%_
                             (lambda (_%L76795%_ _%L76797%_) _%L76795%_))
                            (_%__kont8410884109%_
                             (lambda (_%L76747%_ _%L76749%_) _%L76747%_))
                            (_%__kont8411284113%_ (lambda () '#f)))
                        (let* ((_%__match8415484155%_
                                (lambda (_%__splice8411084111%_
                                         _%target7665976697%_
                                         _%tl7666176700%_
                                         _%e7666876703%_
                                         _%hd7666976707%_
                                         _%tl7667076710%_
                                         _%e7667176713%_
                                         _%hd7667276717%_
                                         _%tl7667376720%_)
                                  (letrec ((_%loop7666276723%_
                                            (lambda (_%hd7666076727%_
                                                     _%id7666676730%_)
                                              (if (gx#stx-pair?
                                                   _%hd7666076727%_)
                                                  (let ((_%e7666376733%_
                                                         (gx#syntax-e
                                                          _%hd7666076727%_)))
                                                    (let ((_%lp-tl7666576740%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7666376733%_)))
                                                          (_%lp-hd7666476737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7666376733%_))))
                                                      (_%loop7666276723%_
                                                       _%lp-tl7666576740%_
                                                       (cons _%lp-hd7666476737%_
                                                             _%id7666676730%_))))
                                                  (let ((_%id7666776743%_
                                                         (reverse _%id7666676730%_)))
                                                    (_%__kont8410884109%_
                                                     _%hd7667276717%_
                                                     _%id7666776743%_))))))
                                    (_%loop7666276723%_
                                     _%target7665976697%_
                                     '()))))
                               (_%g7664576768%_
                                (lambda ()
                                  (if (gx#stx-pair/null? _%__stx8410384104%_)
                                      (if (let ((__tmp85161
                                                 (gx#stx-length
                                                  _%__stx8410384104%_)))
                                            (declare (not safe))
                                            (##fx>= __tmp85161 '2))
                                          (let ((_%__splice8411084111%_
                                                 (gx#syntax-split-splice->vector
                                                  _%__stx8410384104%_
                                                  '2)))
                                            (let ((_%tl7666176700%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8411084111%_
                                                      '1)))
                                                  (_%target7665976697%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8411084111%_
                                                      '0))))
                                              (if (gx#stx-pair?
                                                   _%tl7666176700%_)
                                                  (let ((_%e7666876703%_
                                                         (gx#syntax-e
                                                          _%tl7666176700%_)))
                                                    (let ((_%tl7667076710%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7666876703%_)))
                                                          (_%hd7666976707%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7666876703%_))))
                                                      (if (gx#identifier?
                                                           _%hd7666976707%_)
                                                          (if (gx#free-identifier=?
                                                               |gerbil/core/contract~TypedDefinitions[1]#_g85162_|
                                                               _%hd7666976707%_)
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%tl7667076710%_)
                          (let ((_%e7667176713%_
                                 (gx#syntax-e _%tl7667076710%_)))
                            (let ((_%tl7667376720%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7667176713%_)))
                                  (_%hd7667276717%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7667176713%_))))
                              (if (gx#stx-null? _%tl7667376720%_)
                                  (_%__match8415484155%_
                                   _%__splice8411084111%_
                                   _%target7665976697%_
                                   _%tl7666176700%_
                                   _%e7666876703%_
                                   _%hd7666976707%_
                                   _%tl7667076710%_
                                   _%e7667176713%_
                                   _%hd7667276717%_
                                   _%tl7667376720%_)
                                  (_%__kont8411284113%_))))
                          (_%__kont8411284113%_))
                      (_%__kont8411284113%_))
                  (_%__kont8411284113%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont8411284113%_))))
                                          (_%__kont8411284113%_))
                                      (_%__kont8411284113%_)))))
                          (if (gx#stx-pair? _%__stx8410384104%_)
                              (let ((_%e7665176775%_
                                     (gx#syntax-e _%__stx8410384104%_)))
                                (let ((_%tl7665376782%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7665176775%_)))
                                      (_%hd7665276779%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7665176775%_))))
                                  (if (gx#stx-pair? _%tl7665376782%_)
                                      (let ((_%e7665476785%_
                                             (gx#syntax-e _%tl7665376782%_)))
                                        (let ((_%tl7665676792%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7665476785%_)))
                                              (_%hd7665576789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7665476785%_))))
                                          (if (gx#stx-null? _%tl7665676792%_)
                                              (_%__kont8410684107%_
                                               _%hd7665576789%_
                                               _%hd7665276779%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g7664576768%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g7664576768%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g7664576768%_))))))))
                 (_%infer-slot-type70344%_
                  (lambda (_%slot76540%_ _%type-a76542%_ _%type-b76543%_)
                    (if (not _%type-a76542%_)
                        _%type-b76543%_
                        (if (not _%type-b76543%_)
                            _%type-a76542%_
                            (if (gx#free-identifier=?
                                 _%type-a76542%_
                                 _%type-b76543%_)
                                _%type-a76542%_
                                (let _%again76553%_ ((_%klass-a76556%_
                                                      (gx#syntax-local-value
                                                       _%type-a76542%_))
                                                     (_%klass-b76558%_
                                                      (gx#syntax-local-value
                                                       _%type-b76543%_)))
                                  (if (eq? _%klass-a76556%_ _%klass-b76558%_)
                                      _%type-a76542%_
                                      (if (let ()
                                            (declare (not safe))
                                            (class-instance?
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             _%klass-a76556%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (class-instance?
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 _%klass-b76558%_))
                                              (if (eq? (let ((__obj84874
                                                              _%klass-a76556%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-direct-instance-of?
                        __obj84874
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj84874 '1 '#f '#f))
                     (unchecked-slot-ref __obj84874 'id)))
               (let ((__obj84875 _%klass-b76558%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj84875
                        'gerbil.core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj84875 '1 '#f '#f))
                     (unchecked-slot-ref __obj84875 'id))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%type-a76542%_
                                                  (if (member _%type-a76542%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gerbil/core/contract~ClassMeta#!class-precedence-list
                         _%klass-b76558%_))
                      gx#free-identifier=?)
              _%type-b76543%_
              (if (member _%type-b76543%_
                          (let ()
                            (declare (not safe))
                            (gerbil/core/contract~ClassMeta#!class-precedence-list
                             _%klass-a76556%_))
                          gx#free-identifier=?)
                  _%type-a76542%_
                  (gx#raise-syntax-error
                   '#f
                   '"incompatible slot types"
                   _%stx70329%_
                   _%slot76540%_
                   _%type-a76542%_
                   _%type-b76543%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                     _%klass-b76558%_))
                                                  (let ((_%$e76576%_
                                                         (gx#syntax-local-value
                                                          (let ((__obj84872
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%klass-b76558%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-direct-instance-of?
                           __obj84872
                           'gerbil/core/contract~TypeReference#type-reference::t))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref __obj84872 '1 '#f '#f))
                        (unchecked-slot-ref __obj84872 'identifier)))
                  false)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _%$e76576%_
                                                        ((lambda (_%klass-b76580%_)
                                                           (_%again76553%_
                                                            _%klass-a76556%_
                                                            _%klass-b76580%_))
                                                         _%$e76576%_)
                                                        (if (gx#free-identifier=?
                                                             _%type-a76542%_
                                                             (let ((__obj84873
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%klass-b76558%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-direct-instance-of?
                              __obj84873
                              'gerbil/core/contract~TypeReference#type-reference::t))
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref __obj84873 '1 '#f '#f))
                           (unchecked-slot-ref __obj84873 'identifier))))
                    _%type-a76542%_
                    (gx#raise-syntax-error
                     '#f
                     '"cannot resolve type reference to determine slot type compatibility"
                     _%stx70329%_
                     _%slot76540%_
                     _%type-a76542%_
                     _%type-b76543%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"incompatible slot types"
                                                   _%stx70329%_
                                                   _%slot76540%_
                                                   _%type-a76542%_
                                                   _%type-b76543%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (class-instance?
                                                 gerbil/core/contract~InterfaceInfo#interface-info::t
                                                 _%klass-a76556%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     gerbil/core/contract~InterfaceInfo#interface-info::t
                                                     _%klass-b76558%_))
                                                  (if (member _%type-a76542%_
                                                              (let ((__obj84870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%klass-b76558%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj84870
                               'gerbil/core/contract~InterfaceInfo#interface-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj84870
                               '5
                               '#f
                               '#f))
                            (unchecked-slot-ref
                             __obj84870
                             'interface-precedence-list)))
                      gx#free-identifier=?)
              _%type-b76543%_
              (if (member _%type-b76543%_
                          (let ((__obj84871 _%klass-a76556%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj84871
                                   'gerbil/core/contract~InterfaceInfo#interface-info::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj84871
                                   '5
                                   '#f
                                   '#f))
                                (unchecked-slot-ref
                                 __obj84871
                                 'interface-precedence-list)))
                          gx#free-identifier=?)
                  _%type-a76542%_
                  (gx#raise-syntax-error
                   '#f
                   '"incompatible slot types"
                   _%stx70329%_
                   _%slot76540%_
                   _%type-a76542%_
                   _%type-b76543%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (class-instance?
                                                         |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                         _%klass-b76558%_))
                                                      (let ((_%$e76601%_
                                                             (gx#syntax-local-value
                                                              (let ((__obj84868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%klass-b76558%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj84868
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj84868
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj84868 'identifier)))
                      false)))
                (if _%$e76601%_
                    ((lambda (_%klass-b76605%_)
                       (_%again76553%_ _%klass-a76556%_ _%klass-b76605%_))
                     _%$e76601%_)
                    (if (gx#free-identifier=?
                         _%type-a76542%_
                         (let ((__obj84869 _%klass-b76558%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj84869
                                  'gerbil/core/contract~TypeReference#type-reference::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj84869
                                  '1
                                  '#f
                                  '#f))
                               (unchecked-slot-ref __obj84869 'identifier))))
                        _%type-a76542%_
                        (gx#raise-syntax-error
                         '#f
                         '"cannot resolve type reference to determine slot type compatibility"
                         _%stx70329%_
                         _%slot76540%_
                         _%type-a76542%_
                         _%type-b76543%_))))
              (gx#raise-syntax-error
               '#f
               '"incompatible slot types"
               _%stx70329%_
               _%slot76540%_
               _%type-a76542%_
               _%type-b76543%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                     _%klass-a76556%_))
                                                  (let ((_%$e76616%_
                                                         (gx#syntax-local-value
                                                          (let ((__obj84863
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%klass-a76556%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-direct-instance-of?
                           __obj84863
                           'gerbil/core/contract~TypeReference#type-reference::t))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref __obj84863 '1 '#f '#f))
                        (unchecked-slot-ref __obj84863 'identifier)))
                  false)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _%$e76616%_
                                                        ((lambda (_%klass-a76620%_)
                                                           (_%again76553%_
                                                            _%klass-a76620%_
                                                            _%klass-b76558%_))
                                                         _%$e76616%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (class-instance?
                                                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                                                               _%klass-b76558%_))
                                                            (let ((_%$e76625%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-local-value
                            (let ((__obj84865 _%klass-b76558%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     __obj84865
                                     'gerbil/core/contract~TypeReference#type-reference::t))
                                  (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     __obj84865
                                     '1
                                     '#f
                                     '#f))
                                  (unchecked-slot-ref __obj84865 'identifier)))
                            false)))
                      (if _%$e76625%_
                          ((lambda (_%klass-b76629%_)
                             (_%again76553%_
                              _%klass-a76556%_
                              _%klass-b76629%_))
                           _%$e76625%_)
                          (if (gx#free-identifier=?
                               (let ((__obj84866 _%klass-a76556%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj84866
                                        'gerbil/core/contract~TypeReference#type-reference::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj84866
                                        '1
                                        '#f
                                        '#f))
                                     (unchecked-slot-ref
                                      __obj84866
                                      'identifier)))
                               (let ((__obj84867 _%klass-b76558%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (##structure-direct-instance-of?
                                        __obj84867
                                        'gerbil/core/contract~TypeReference#type-reference::t))
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        __obj84867
                                        '1
                                        '#f
                                        '#f))
                                     (unchecked-slot-ref
                                      __obj84867
                                      'identifier))))
                              _%type-a76542%_
                              (gx#raise-syntax-error
                               '#f
                               '"cannot resolve type reference to determine slot type compatibility"
                               _%stx70329%_
                               _%slot76540%_
                               _%type-a76542%_
                               _%type-b76543%_))))
                    (if (gx#free-identifier=?
                         _%type-b76543%_
                         (let ((__obj84864 _%klass-a76556%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj84864
                                  'gerbil/core/contract~TypeReference#type-reference::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj84864
                                  '1
                                  '#f
                                  '#f))
                               (unchecked-slot-ref __obj84864 'identifier))))
                        _%type-b76543%_
                        (gx#raise-syntax-error
                         '#f
                         '"cannot resolve type reference to determine slot type compatibility"
                         _%stx70329%_
                         _%slot76540%_
                         _%type-a76542%_
                         _%type-b76543%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"unexpected slot type"
                                                   _%stx70329%_
                                                   _%slot76540%_
                                                   _%type-a76542%_
                                                   _%klass-a76556%_)))))))))))
                 (_%get-mixin-slots70345%_
                  (lambda (_%super76411%_)
                    (letrec* ((_%tab76414%_ (make-hash-table-eq)))
                      (let _%loop76417%_ ((_%rest76420%_ _%super76411%_)
                                          (_%result76422%_ '()))
                        (let* ((_%rest7642376431%_ _%rest76420%_)
                               (_%else7642576443%_
                                (lambda ()
                                  (values (reverse! _%result76422%_)
                                          _%tab76414%_)))
                               (_%K7642776524%_
                                (lambda (_%rest76447%_ _%type-id76449%_)
                                  (let* ((_%klass76451%_
                                          (let ()
                                            (declare (not safe))
                                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                             _%stx70329%_
                                             _%type-id76449%_)))
                                         (_%slots76454%_
                                          (let ((__obj84876 _%klass76451%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-direct-instance-of?
                                                   __obj84876
                                                   'gerbil.core#class-type-info::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   __obj84876
                                                   '4
                                                   '#f
                                                   '#f))
                                                (class-slot-ref
                                                 gerbil/core/mop~MOP-2#class-type-info::t
                                                 __obj84876
                                                 'slots)))))
                                    (let _%loop-inner76459%_ ((_%rest-slots76462%_
                                                               _%slots76454%_)
                                                              (_%result76464%_
                                                               _%result76422%_))
                                      (let* ((_%rest-slots7646576473%_
                                              _%rest-slots76462%_)
                                             (_%else7646776485%_
                                              (lambda ()
                                                (_%loop76417%_
                                                 (foldr cons
                                                        _%rest76447%_
                                                        (let ((__obj84877
                                                               _%klass76451%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##structure-direct-instance-of?
                         __obj84877
                         'gerbil.core#class-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj84877 '3 '#f '#f))
                      (class-slot-ref
                       gerbil/core/mop~MOP-2#class-type-info::t
                       __obj84877
                       'super))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%result76464%_)))
                                             (_%K7646976508%_
                                              (lambda (_%rest-slots76489%_
                                                       _%slot76491%_)
                                                (let ((_%slot-type76493%_
                                                       (hash-ref
                                                        _%tab76414%_
                                                        _%slot76491%_
                                                        absent-value)))
                                                  (if (eq? _%slot-type76493%_
                                                           absent-value)
                                                      (let ()
                                                        (hash-put!
                                                         _%tab76414%_
                                                         _%slot76491%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (|gerbil/core/contract~Using[1]#!class-slot-type|
                                                            _%klass76451%_
                                                            _%slot76491%_)))
                                                        (_%loop-inner76459%_
                                                         _%rest-slots76489%_
                                                         (cons _%slot76491%_
                                                               _%result76464%_)))
                                                      (if (not _%slot-type76493%_)
                                                          (let ()
                                                            (hash-put!
                                                             _%tab76414%_
                                                             _%slot76491%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (|gerbil/core/contract~Using[1]#!class-slot-type|
                        _%klass76451%_
                        _%slot76491%_)))
                    (_%loop-inner76459%_ _%rest-slots76489%_ _%result76464%_))
                  (let* ((_%other-slot-type76502%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~Using[1]#!class-slot-type|
                             _%klass76451%_
                             _%slot76491%_)))
                         (_%slot-type76505%_
                          (_%infer-slot-type70344%_
                           _%slot76491%_
                           _%other-slot-type76502%_
                           _%slot-type76493%_)))
                    (hash-put! _%tab76414%_ _%slot76491%_ _%slot-type76505%_)
                    (_%loop-inner76459%_
                     _%rest-slots76489%_
                     _%result76464%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (pair? _%rest-slots7646576473%_)
                                            (let ((_%hd7647076512%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%rest-slots7646576473%_)))
                                                  (_%tl7647176515%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%rest-slots7646576473%_))))
                                              (let* ((_%slot76518%_
                                                      _%hd7647076512%_)
                                                     (_%rest-slots76521%_
                                                      _%tl7647176515%_))
                                                (_%K7646976508%_
                                                 _%rest-slots76521%_
                                                 _%slot76518%_)))
                                            (_%else7646776485%_))))))))
                          (if (pair? _%rest7642376431%_)
                              (let ((_%hd7642876528%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest7642376431%_)))
                                    (_%tl7642976531%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest7642376431%_))))
                                (let* ((_%type-id76534%_ _%hd7642876528%_)
                                       (_%rest76537%_ _%tl7642976531%_))
                                  (_%K7642776524%_
                                   _%rest76537%_
                                   _%type-id76534%_)))
                              (_%else7642576443%_)))))))
                 (_%get-slot-table70346%_
                  (lambda (_%slots76354%_
                           _%mixin-slots76356%_
                           _%super76357%_
                           _%contract-e76358%_
                           _%getf76359%_
                           _%mixf76360%_)
                    (letrec* ((_%tab76362%_ (make-hash-table-eq)))
                      (for-each
                       (lambda (_%slot76365%_)
                         (for-each
                          (lambda (_%super-type76368%_)
                            (let* ((_%klass76371%_
                                    (gx#syntax-local-value
                                     _%super-type76368%_))
                                   (_%$e76374%_
                                    (hash-get _%tab76362%_ _%slot76365%_)))
                              (if _%$e76374%_
                                  ((lambda (_%a76378%_)
                                     (let ((_%$e76381%_
                                            (_%getf76359%_
                                             _%klass76371%_
                                             _%slot76365%_)))
                                       (if _%$e76381%_
                                           ((lambda (_%b76385%_)
                                              (hash-put!
                                               _%tab76362%_
                                               _%slot76365%_
                                               (_%mixf76360%_
                                                _%slot76365%_
                                                _%a76378%_
                                                _%b76385%_)))
                                            _%$e76381%_)
                                           '#!void)))
                                   _%$e76374%_)
                                  (let ((_%$e76388%_
                                         (_%getf76359%_
                                          _%klass76371%_
                                          _%slot76365%_)))
                                    (if _%$e76388%_
                                        ((lambda (_%a76392%_)
                                           (hash-put!
                                            _%tab76362%_
                                            _%slot76365%_
                                            _%a76392%_))
                                         _%$e76388%_)
                                        '#!void)))))
                          _%super76357%_))
                       _%mixin-slots76356%_)
                      (for-each
                       (lambda (_%slot-spec76395%_)
                         (let ((_%slot76398%_
                                (_%slot-name70335%_ _%slot-spec76395%_))
                               (_%a76400%_
                                (_%contract-e76358%_ _%slot-spec76395%_)))
                           (if _%a76400%_
                               (let ((_%$e76402%_
                                      (hash-get _%tab76362%_ _%slot76398%_)))
                                 (if _%$e76402%_
                                     ((lambda (_%b76406%_)
                                        (hash-put!
                                         _%tab76362%_
                                         _%slot76398%_
                                         (_%mixf76360%_
                                          _%slot76398%_
                                          _%a76400%_
                                          _%b76406%_)))
                                      _%$e76402%_)
                                     (hash-put!
                                      _%tab76362%_
                                      _%slot76398%_
                                      _%a76400%_)))
                               '#!void)))
                       _%slots76354%_)
                      _%tab76362%_)))
                 (_%get-slot-contracts70347%_
                  (lambda (_%slots74790%_
                           _%mixin-slots74792%_
                           _%super74793%_
                           _%slot-type-table74794%_)
                    (_%get-slot-table70346%_
                     _%slots74790%_
                     _%mixin-slots74792%_
                     _%super74793%_
                     _%slot-contract-normalize70337%_
                     |gerbil/core/contract~Using[1]#!class-slot-contract|
                     (lambda (_%slot74796%_ _%a74798%_ _%b74799%_)
                       (let* ((_%__stx8442584426%_ _%a74798%_)
                              (_%g7486174914%_
                               (lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%__stx8442584426%_))))
                         (let ((_%__kont8442884429%_
                                (lambda ()
                                  (let* ((_%__stx8439384394%_ _%b74799%_)
                                         (_%g7618476202%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8439384394%_))))
                                    (let ((_%__kont8439684397%_
                                           (lambda (_%L76296%_)
                                             (let* ((_%g7631576323%_
                                                     (lambda (_%g7631676319%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7631676319%_)))
                                                    (_%g7631476342%_
                                                     (lambda (_%g7631676327%_)
                                                       ((lambda (_%L76330%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':)
                        (cons _%L76330%_ '())))
                _%g7631676327%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7631476342%_
                                                (hash-ref
                                                 _%slot-type-table74794%_
                                                 _%slot74796%_)))))
                                          (_%__kont8439884399%_
                                           (lambda (_%L76229%_)
                                             (let* ((_%g7624876256%_
                                                     (lambda (_%g7624976252%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7624976252%_)))
                                                    (_%g7624776275%_
                                                     (lambda (_%g7624976260%_)
                                                       ((lambda (_%L76263%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L76229%_
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L76263%_ '())))))
                _%g7624976260%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7624776275%_
                                                (hash-ref
                                                 _%slot-type-table74794%_
                                                 _%slot74796%_))))))
                                      (let ((_%__match8440684407%_
                                             (lambda (_%e7618776286%_
                                                      _%hd7618876290%_
                                                      _%tl7618976293%_)
                                               (let ((_%L76296%_
                                                      _%hd7618876290%_))
                                                 (if (or (gx#free-identifier=?
                                                          _%L76296%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':))
                                                         (gx#free-identifier=?
                                                          _%L76296%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':?))
                                                         (gx#free-identifier=?
                                                          _%L76296%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':-)))
                                                     (_%__kont8439684397%_
                                                      _%L76296%_)
                                                     (if (gx#identifier?
                                                          _%hd7618876290%_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core/contract~TypedDefinitions[1]#_g85163_|
                                                              _%hd7618876290%_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%tl7618976293%_)
                         (let ((_%e7619476219%_
                                (gx#syntax-e _%tl7618976293%_)))
                           (let ((_%tl7619676226%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7619476219%_)))
                                 (_%hd7619576223%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7619476219%_))))
                             (_%__kont8439884399%_ _%hd7619576223%_)))
                         (let () (declare (not safe)) (_%g7618476202%_)))
                     (let () (declare (not safe)) (_%g7618476202%_)))
                 (let () (declare (not safe)) (_%g7618476202%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (gx#stx-pair? _%__stx8439384394%_)
                                            (let ((_%e7618776286%_
                                                   (gx#syntax-e
                                                    _%__stx8439384394%_)))
                                              (let ((_%tl7618976293%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7618776286%_)))
                                                    (_%hd7618876290%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7618776286%_))))
                                                (_%__match8440684407%_
                                                 _%e7618776286%_
                                                 _%hd7618876290%_
                                                 _%tl7618976293%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g7618476202%_))))))))
                               (_%__kont8443084431%_
                                (lambda ()
                                  (let* ((_%__stx8434584346%_ _%b74799%_)
                                         (_%g7598076000%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8434584346%_))))
                                    (let ((_%__kont8434884349%_
                                           (lambda ()
                                             (let* ((_%g7612276130%_
                                                     (lambda (_%g7612376126%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7612376126%_)))
                                                    (_%g7612176154%_
                                                     (lambda (_%g7612376134%_)
                                                       ((lambda (_%L76137%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':?)
                        (cons _%L76137%_ '())))
                _%g7612376134%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7612176154%_
                                                (hash-ref
                                                 _%slot-type-table74794%_
                                                 _%slot74796%_)))))
                                          (_%__kont8435084351%_
                                           (lambda (_%L76048%_)
                                             (let* ((_%g7607076078%_
                                                     (lambda (_%g7607176074%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7607176074%_)))
                                                    (_%g7606976097%_
                                                     (lambda (_%g7607176082%_)
                                                       ((lambda (_%L76085%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L76048%_
                              (cons (gx#datum->syntax '#f ':?)
                                    (cons _%L76085%_ '())))))
                _%g7607176082%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7606976097%_
                                                (hash-ref
                                                 _%slot-type-table74794%_
                                                 _%slot74796%_)))))
                                          (_%__kont8435284353%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"incompatible slot contracts"
                                              _%stx70329%_
                                              _%slot74796%_
                                              _%a74798%_
                                              _%b74799%_))))
                                      (if (gx#stx-pair? _%__stx8434584346%_)
                                          (let ((_%e7598276108%_
                                                 (gx#syntax-e
                                                  _%__stx8434584346%_)))
                                            (let ((_%tl7598476115%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7598276108%_)))
                                                  (_%hd7598376112%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7598276108%_))))
                                              (if (gx#identifier?
                                                   _%hd7598376112%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g85164_|
                                                       _%hd7598376112%_)
                                                      (_%__kont8434884349%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~TypedDefinitions[1]#_g85165_|
                                                           _%hd7598376112%_)
                                                          (if (gx#stx-pair?
                                                               _%tl7598476115%_)
                                                              (let ((_%e7598976028%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl7598476115%_)))
                        (let ((_%tl7599176035%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7598976028%_)))
                              (_%hd7599076032%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7598976028%_))))
                          (if (gx#stx-pair? _%tl7599176035%_)
                              (let ((_%e7599276038%_
                                     (gx#syntax-e _%tl7599176035%_)))
                                (let ((_%tl7599476045%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7599276038%_)))
                                      (_%hd7599376042%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7599276038%_))))
                                  (if (gx#identifier? _%hd7599376042%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~TypedDefinitions[1]#_g85166_|
                                           _%hd7599376042%_)
                                          (_%__kont8435084351%_
                                           _%hd7599076032%_)
                                          (_%__kont8435284353%_))
                                      (_%__kont8435284353%_))))
                              (_%__kont8435284353%_))))
                      (_%__kont8435284353%_))
                  (_%__kont8435284353%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont8435284353%_))))
                                          (_%__kont8435284353%_))))))
                               (_%__kont8443284433%_
                                (lambda ()
                                  (let* ((_%__stx8431384314%_ _%b74799%_)
                                         (_%g7578875807%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8431384314%_))))
                                    (let ((_%__kont8431684317%_
                                           (lambda (_%L75903%_)
                                             (let* ((_%g7592275930%_
                                                     (lambda (_%g7592375926%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7592375926%_)))
                                                    (_%g7592175949%_
                                                     (lambda (_%g7592375934%_)
                                                       ((lambda (_%L75937%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':-)
                        (cons _%L75937%_ '())))
                _%g7592375934%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7592175949%_
                                                (hash-ref
                                                 _%slot-type-table74794%_
                                                 _%slot74796%_)))))
                                          (_%__kont8431884319%_
                                           (lambda (_%L75834%_ _%L75836%_)
                                             (let* ((_%g7585575863%_
                                                     (lambda (_%g7585675859%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7585675859%_)))
                                                    (_%g7585475882%_
                                                     (lambda (_%g7585675867%_)
                                                       ((lambda (_%L75870%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L75836%_
                              (cons (gx#datum->syntax '#f ':-)
                                    (cons _%L75870%_ '())))))
                _%g7585675867%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7585475882%_
                                                (hash-ref
                                                 _%slot-type-table74794%_
                                                 _%slot74796%_))))))
                                      (let ((_%__match8432684327%_
                                             (lambda (_%e7579175893%_
                                                      _%hd7579275897%_
                                                      _%tl7579375900%_)
                                               (let ((_%L75903%_
                                                      _%hd7579275897%_))
                                                 (if (or (gx#free-identifier=?
                                                          _%L75903%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':))
                                                         (gx#free-identifier=?
                                                          _%L75903%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':?))
                                                         (gx#free-identifier=?
                                                          _%L75903%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':-)))
                                                     (_%__kont8431684317%_
                                                      _%L75903%_)
                                                     (if (gx#identifier?
                                                          _%hd7579275897%_)
                                                         (if (gx#free-identifier=?
                                                              |gerbil/core/contract~TypedDefinitions[1]#_g85167_|
                                                              _%hd7579275897%_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%tl7579375900%_)
                         (let ((_%e7579975824%_
                                (gx#syntax-e _%tl7579375900%_)))
                           (let ((_%tl7580175831%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7579975824%_)))
                                 (_%hd7580075828%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7579975824%_))))
                             (_%__kont8431884319%_
                              _%tl7580175831%_
                              _%hd7580075828%_)))
                         (let () (declare (not safe)) (_%g7578875807%_)))
                     (let () (declare (not safe)) (_%g7578875807%_)))
                 (let () (declare (not safe)) (_%g7578875807%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (gx#stx-pair? _%__stx8431384314%_)
                                            (let ((_%e7579175893%_
                                                   (gx#syntax-e
                                                    _%__stx8431384314%_)))
                                              (let ((_%tl7579375900%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7579175893%_)))
                                                    (_%hd7579275897%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7579175893%_))))
                                                (_%__match8432684327%_
                                                 _%e7579175893%_
                                                 _%hd7579275897%_
                                                 _%tl7579375900%_)))
                                            (let ()
                                              (declare (not safe))
                                              (_%g7578875807%_))))))))
                               (_%__kont8443484435%_
                                (lambda (_%L75615%_)
                                  (let* ((_%__stx8428784288%_ _%b74799%_)
                                         (_%g7563175645%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8428784288%_))))
                                    (let ((_%__kont8429084291%_
                                           (lambda (_%L75718%_)
                                             (let* ((_%g7573175739%_
                                                     (lambda (_%g7573275735%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7573275735%_)))
                                                    (_%g7573075758%_
                                                     (lambda (_%g7573275743%_)
                                                       ((lambda (_%L75746%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons (cons (gx#datum->syntax '#f '?)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons _%L75615%_
                                                      (cons _%L75718%_ '())))
                                          '()))
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L75746%_ '())))))
                _%g7573275743%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7573075758%_
                                                (hash-ref
                                                 _%slot-type-table74794%_
                                                 _%slot74796%_)))))
                                          (_%__kont8429284293%_
                                           (lambda ()
                                             (let* ((_%g7565675664%_
                                                     (lambda (_%g7565775660%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7565775660%_)))
                                                    (_%g7565575687%_
                                                     (lambda (_%g7565775668%_)
                                                       ((lambda (_%L75671%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L75615%_
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L75671%_ '())))))
                _%g7565775668%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7565575687%_
                                                (hash-ref
                                                 _%slot-type-table74794%_
                                                 _%slot74796%_))))))
                                      (if (gx#stx-pair? _%__stx8428784288%_)
                                          (let ((_%e7563475698%_
                                                 (gx#syntax-e
                                                  _%__stx8428784288%_)))
                                            (let ((_%tl7563675705%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7563475698%_)))
                                                  (_%hd7563575702%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7563475698%_))))
                                              (if (gx#identifier?
                                                   _%hd7563575702%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g85168_|
                                                       _%hd7563575702%_)
                                                      (if (gx#stx-pair?
                                                           _%tl7563675705%_)
                                                          (let ((_%e7563775708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl7563675705%_)))
                    (let ((_%tl7563975715%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7563775708%_)))
                          (_%hd7563875712%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7563775708%_))))
                      (_%__kont8429084291%_ _%hd7563875712%_)))
                  (_%__kont8429284293%_))
              (_%__kont8429284293%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont8429284293%_))))
                                          (_%__kont8429284293%_))))))
                               (_%__kont8443684437%_
                                (lambda (_%L75336%_)
                                  (let* ((_%__stx8422184222%_ _%b74799%_)
                                         (_%g7535475381%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8422184222%_))))
                                    (let ((_%__kont8422484225%_
                                           (lambda ()
                                             (let* ((_%g7553875546%_
                                                     (lambda (_%g7553975542%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7553975542%_)))
                                                    (_%g7553775570%_
                                                     (lambda (_%g7553975550%_)
                                                       ((lambda (_%L75553%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L75336%_
                              (cons (gx#datum->syntax '#f ':?)
                                    (cons _%L75553%_ '())))))
                _%g7553975550%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7553775570%_
                                                (hash-ref
                                                 _%slot-type-table74794%_
                                                 _%slot74796%_)))))
                                          (_%__kont8422684227%_
                                           (lambda (_%L75471%_)
                                             (let* ((_%g7548675494%_
                                                     (lambda (_%g7548775490%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7548775490%_)))
                                                    (_%g7548575513%_
                                                     (lambda (_%g7548775498%_)
                                                       ((lambda (_%L75501%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons (cons (gx#datum->syntax '#f '?)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons _%L75336%_
                                                      (cons _%L75471%_ '())))
                                          '()))
                              (cons (gx#datum->syntax '#f ':?)
                                    (cons _%L75501%_ '())))))
                _%g7548775498%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7548575513%_
                                                (hash-ref
                                                 _%slot-type-table74794%_
                                                 _%slot74796%_)))))
                                          (_%__kont8422884229%_
                                           (lambda (_%L75419%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"incompatible slot contracts"
                                              _%stx70329%_
                                              _%slot74796%_
                                              _%a74798%_
                                              _%b74799%_)))
                                          (_%__kont8423084231%_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"incompatible slot contracts"
                                              _%stx70329%_
                                              _%slot74796%_
                                              _%a74798%_
                                              _%b74799%_))))
                                      (if (gx#stx-pair? _%__stx8422184222%_)
                                          (let ((_%e7535675524%_
                                                 (gx#syntax-e
                                                  _%__stx8422184222%_)))
                                            (let ((_%tl7535875531%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7535675524%_)))
                                                  (_%hd7535775528%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7535675524%_))))
                                              (if (gx#identifier?
                                                   _%hd7535775528%_)
                                                  (if (gx#free-identifier=?
                                                       |gerbil/core/contract~TypedDefinitions[1]#_g85169_|
                                                       _%hd7535775528%_)
                                                      (_%__kont8422484225%_)
                                                      (if (gx#free-identifier=?
                                                           |gerbil/core/contract~TypedDefinitions[1]#_g85170_|
                                                           _%hd7535775528%_)
                                                          (if (gx#stx-pair?
                                                               _%tl7535875531%_)
                                                              (let ((_%e7536375451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%tl7535875531%_)))
                        (let ((_%tl7536575458%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7536375451%_)))
                              (_%hd7536475455%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7536375451%_))))
                          (if (gx#stx-pair? _%tl7536575458%_)
                              (let ((_%e7536675461%_
                                     (gx#syntax-e _%tl7536575458%_)))
                                (let ((_%tl7536875468%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7536675461%_)))
                                      (_%hd7536775465%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7536675461%_))))
                                  (if (gx#identifier? _%hd7536775465%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/contract~TypedDefinitions[1]#_g85171_|
                                           _%hd7536775465%_)
                                          (_%__kont8422684227%_
                                           _%hd7536475455%_)
                                          (_%__kont8422884229%_
                                           _%hd7536475455%_))
                                      (_%__kont8422884229%_
                                       _%hd7536475455%_))))
                              (_%__kont8422884229%_ _%hd7536475455%_))))
                      (_%__kont8423084231%_))
                  (_%__kont8423084231%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont8423084231%_))))
                                          (_%__kont8423084231%_))))))
                               (_%__kont8443884439%_
                                (lambda (_%L75153%_)
                                  (let* ((_%__stx8418984190%_ _%b74799%_)
                                         (_%g7516975187%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8418984190%_))))
                                    (let ((_%__kont8419284193%_
                                           (lambda (_%L75276%_)
                                             (let ((_%$e75287%_
                                                    (gx#free-identifier=?
                                                     _%L75276%_
                                                     (gx#datum->syntax
                                                      '#f
                                                      ':))))
                                               (if _%$e75287%_
                                                   _%$e75287%_
                                                   (let ((_%$e75291%_
                                                          (gx#free-identifier=?
                                                           _%L75276%_
                                                           (gx#datum->syntax
                                                            '#f
                                                            ':?))))
                                                     (if _%$e75291%_
                                                         _%$e75291%_
                                                         (gx#free-identifier=?
                                                          _%L75276%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':-))))))))
                                          (_%__kont8419484195%_
                                           (lambda (_%L75214%_)
                                             (let* ((_%g7522875236%_
                                                     (lambda (_%g7522975232%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7522975232%_)))
                                                    (_%g7522775255%_
                                                     (lambda (_%g7522975240%_)
                                                       ((lambda (_%L75243%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons (cons (gx#datum->syntax '#f '?)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons _%L75153%_
                                                      (cons _%L75214%_ '())))
                                          '()))
                              (cons (gx#datum->syntax '#f ':-)
                                    (cons _%L75243%_ '())))))
                _%g7522975240%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7522775255%_
                                                (hash-ref
                                                 _%slot-type-table74794%_
                                                 _%slot74796%_))))))
                                      (if (gx#stx-pair? _%__stx8418984190%_)
                                          (let ((_%e7517275266%_
                                                 (gx#syntax-e
                                                  _%__stx8418984190%_)))
                                            (let ((_%tl7517475273%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7517275266%_)))
                                                  (_%hd7517375270%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7517275266%_))))
                                              (_%__kont8419284193%_
                                               _%hd7517375270%_)))
                                          (let ()
                                            (declare (not safe))
                                            (_%g7516975187%_)))))))
                               (_%__kont8444084441%_
                                (lambda (_%L74941%_)
                                  (let* ((_%__stx8415784158%_ _%b74799%_)
                                         (_%g7495574973%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx8415784158%_))))
                                    (let ((_%__kont8416084161%_
                                           (lambda (_%L75056%_ _%L75058%_)
                                             (let* ((_%g7508175089%_
                                                     (lambda (_%g7508275085%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7508275085%_)))
                                                    (_%g7508075108%_
                                                     (lambda (_%g7508275093%_)
                                                       ((lambda (_%L75096%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons (cons (gx#datum->syntax '#f '?)
                                    (cons (cons (gx#datum->syntax '#f 'and)
                                                (cons _%L74941%_
                                                      (cons _%L75058%_ '())))
                                          '()))
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L75096%_ '())))))
                _%g7508275093%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7508075108%_
                                                (hash-ref
                                                 _%slot-type-table74794%_
                                                 _%slot74796%_)))))
                                          (_%__kont8416284163%_
                                           (lambda ()
                                             (let* ((_%g7498474992%_
                                                     (lambda (_%g7498574988%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7498574988%_)))
                                                    (_%g7498375015%_
                                                     (lambda (_%g7498574996%_)
                                                       ((lambda (_%L74999%_)
                                                          (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         ':~)
                        (cons _%L74941%_
                              (cons (gx#datum->syntax '#f ':)
                                    (cons _%L74999%_ '())))))
                _%g7498574996%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7498375015%_
                                                (hash-ref
                                                 _%slot-type-table74794%_
                                                 _%slot74796%_))))))
                                      (let ((_%__match8418684187%_
                                             (lambda (_%e7495975026%_
                                                      _%hd7496075030%_
                                                      _%tl7496175033%_
                                                      _%e7496275036%_
                                                      _%hd7496375040%_
                                                      _%tl7496475043%_
                                                      _%e7496575046%_
                                                      _%hd7496675050%_
                                                      _%tl7496775053%_)
                                               (let ((_%L75056%_
                                                      _%hd7496675050%_)
                                                     (_%L75058%_
                                                      _%hd7496375040%_))
                                                 (if (or (gx#free-identifier=?
                                                          _%L75056%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':))
                                                         (gx#free-identifier=?
                                                          _%L75056%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':?))
                                                         (gx#free-identifier=?
                                                          _%L75056%_
                                                          (gx#datum->syntax
                                                           '#f
                                                           ':-)))
                                                     (_%__kont8416084161%_
                                                      _%L75056%_
                                                      _%L75058%_)
                                                     (_%__kont8416284163%_))))))
                                        (if (gx#stx-pair? _%__stx8415784158%_)
                                            (let ((_%e7495975026%_
                                                   (gx#syntax-e
                                                    _%__stx8415784158%_)))
                                              (let ((_%tl7496175033%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7495975026%_)))
                                                    (_%hd7496075030%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7495975026%_))))
                                                (if (gx#identifier?
                                                     _%hd7496075030%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypedDefinitions[1]#_g85172_|
                                                         _%hd7496075030%_)
                                                        (if (gx#stx-pair?
                                                             _%tl7496175033%_)
                                                            (let ((_%e7496275036%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl7496175033%_)))
                      (let ((_%tl7496475043%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e7496275036%_)))
                            (_%hd7496375040%_
                             (let ()
                               (declare (not safe))
                               (##car _%e7496275036%_))))
                        (if (gx#stx-pair? _%tl7496475043%_)
                            (let ((_%e7496575046%_
                                   (gx#syntax-e _%tl7496475043%_)))
                              (let ((_%tl7496775053%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e7496575046%_)))
                                    (_%hd7496675050%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e7496575046%_))))
                                (_%__match8418684187%_
                                 _%e7495975026%_
                                 _%hd7496075030%_
                                 _%tl7496175033%_
                                 _%e7496275036%_
                                 _%hd7496375040%_
                                 _%tl7496475043%_
                                 _%e7496575046%_
                                 _%hd7496675050%_
                                 _%tl7496775053%_)))
                            (_%__kont8416284163%_))))
                    (_%__kont8416284163%_))
                (_%__kont8416284163%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont8416284163%_))))
                                            (_%__kont8416284163%_))))))))
                           (if (gx#stx-pair? _%__stx8442584426%_)
                               (let ((_%e7486376169%_
                                      (gx#syntax-e _%__stx8442584426%_)))
                                 (let ((_%tl7486576176%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e7486376169%_)))
                                       (_%hd7486476173%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e7486376169%_))))
                                   (if (gx#identifier? _%hd7486476173%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/contract~TypedDefinitions[1]#_g85173_|
                                            _%hd7486476173%_)
                                           (_%__kont8442884429%_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core/contract~TypedDefinitions[1]#_g85174_|
                                                _%hd7486476173%_)
                                               (_%__kont8443084431%_)
                                               (if (gx#free-identifier=?
                                                    |gerbil/core/contract~TypedDefinitions[1]#_g85175_|
                                                    _%hd7486476173%_)
                                                   (_%__kont8443284433%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/contract~TypedDefinitions[1]#_g85176_|
                                                        _%hd7486476173%_)
                                                       (if (gx#stx-pair?
                                                            _%tl7486576176%_)
                                                           (let ((_%e7487675595%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%tl7486576176%_)))
                     (let ((_%tl7487875602%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e7487675595%_)))
                           (_%hd7487775599%_
                            (let ()
                              (declare (not safe))
                              (##car _%e7487675595%_))))
                       (if (gx#stx-pair? _%tl7487875602%_)
                           (let ((_%e7487975605%_
                                  (gx#syntax-e _%tl7487875602%_)))
                             (let ((_%tl7488175612%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e7487975605%_)))
                                   (_%hd7488075609%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e7487975605%_))))
                               (if (gx#identifier? _%hd7488075609%_)
                                   (if (gx#free-identifier=?
                                        |gerbil/core/contract~TypedDefinitions[1]#_g85177_|
                                        _%hd7488075609%_)
                                       (_%__kont8443484435%_ _%hd7487775599%_)
                                       (if (gx#free-identifier=?
                                            |gerbil/core/contract~TypedDefinitions[1]#_g85178_|
                                            _%hd7488075609%_)
                                           (_%__kont8443684437%_
                                            _%hd7487775599%_)
                                           (if (gx#free-identifier=?
                                                |gerbil/core/contract~TypedDefinitions[1]#_g85179_|
                                                _%hd7488075609%_)
                                               (_%__kont8443884439%_
                                                _%hd7487775599%_)
                                               (_%__kont8444084441%_
                                                _%hd7487775599%_))))
                                   (_%__kont8444084441%_ _%hd7487775599%_))))
                           (_%__kont8444084441%_ _%hd7487775599%_))))
                   (let () (declare (not safe)) (_%g7486174914%_)))
               (let () (declare (not safe)) (_%g7486174914%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ()
                                         (declare (not safe))
                                         (_%g7486174914%_)))))
                               (let ()
                                 (declare (not safe))
                                 (_%g7486174914%_)))))))))
                 (_%get-slot-defaults70348%_
                  (lambda (_%slots74780%_ _%mixin-slots74782%_ _%super74783%_)
                    (_%get-slot-table70346%_
                     _%slots74780%_
                     _%mixin-slots74782%_
                     _%super74783%_
                     _%slot-default70343%_
                     |gerbil/core/contract~Using[1]#!class-slot-default|
                     (lambda (_%slot74785%_ _%a74787%_ _%b74788%_)
                       _%a74787%_))))
                 (_%update-slot-types!70349%_
                  (lambda (_%slots74750%_ _%slot-type-table74752%_)
                    (for-each
                     (lambda (_%slot-spec74754%_)
                       (let* ((_%slot74757%_
                               (_%slot-name70335%_ _%slot-spec74754%_))
                              (_%slot-type7475974761%_
                               (_%slot-contract-type70339%_
                                _%slot-spec74754%_)))
                         (if _%slot-type7475974761%_
                             (let* ((_%slot-type74765%_
                                     _%slot-type7475974761%_)
                                    (_%$e74768%_
                                     (hash-get
                                      _%slot-type-table74752%_
                                      _%slot74757%_)))
                               (if _%$e74768%_
                                   ((lambda (_%other-slot-type74772%_)
                                      (let ((_%slot-type74775%_
                                             (_%infer-slot-type70344%_
                                              _%slot74757%_
                                              _%other-slot-type74772%_
                                              _%slot-type74765%_)))
                                        (hash-put!
                                         _%slot-type-table74752%_
                                         _%slot74757%_
                                         _%slot-type74775%_)))
                                    _%$e74768%_)
                                   (hash-put!
                                    _%slot-type-table74752%_
                                    _%slot74757%_
                                    _%slot-type74765%_)))
                             '#f)))
                     _%slots74750%_)))
                 (_%syntax-local-value/context70350%_
                  (lambda (_%id74744%_)
                    (gx#syntax-local-value
                     _%id74744%_
                     (lambda (_%id74747%_)
                       (gx#raise-syntax-error
                        '#f
                        '"not a class meta type binding"
                        _%stx70329%_
                        _%id74747%_)))))
                 (_%order-slots70351%_
                  (lambda (_%slots74675%_ _%super74677%_)
                    (let ((_g85180_
                           (c4-linearize
                            '()
                            _%super74677%_
                            'get-precedence-list:
                            (lambda (_%klass-id74679%_)
                              (cons _%klass-id74679%_
                                    (let ((__tmp85182
                                           (_%syntax-local-value/context70350%_
                                            _%klass-id74679%_)))
                                      (declare (not safe))
                                      (gerbil/core/contract~ClassMeta#!class-precedence-list
                                       __tmp85182))))
                            'struct:
                            (lambda (_%klass-id74682%_)
                              (let ((__obj84878
                                     (_%syntax-local-value/context70350%_
                                      _%klass-id74682%_)))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-direct-instance-of?
                                       __obj84878
                                       'gerbil.core#class-type-info::t))
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __obj84878
                                       '7
                                       '#f
                                       '#f))
                                    (class-slot-ref
                                     gerbil/core/mop~MOP-2#class-type-info::t
                                     __obj84878
                                     'struct?))))
                            'eq:
                            gx#free-identifier=?)))
                      (begin
                        (let ((_g85181_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g85180_)
                                     (##values-length _g85180_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g85181_ 2)))
                              (error "Context expects 2 values" _g85181_)))
                        (let ((_%precedence-list74685%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g85180_ 0)))
                              (_%base-struct74687%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g85180_ 1))))
                          (let* ((_%base-fields74701%_
                                  (if _%base-struct74687%_
                                      (let* ((_%klass74689%_
                                              (gx#syntax-local-value
                                               _%base-struct74687%_))
                                             (_%$e74692%_
                                              (let ((__obj84879
                                                     _%klass74689%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       __obj84879
                                                       'gerbil.core#class-type-info::t))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __obj84879
                                                       '6
                                                       '#f
                                                       '#f))
                                                    (class-slot-ref
                                                     gerbil/core/mop~MOP-2#class-type-info::t
                                                     __obj84879
                                                     'ordered-slots)))))
                                        (if _%$e74692%_
                                            _%$e74692%_
                                            (let ((_%ordered74698%_
                                                   (_%order-slots70351%_
                                                    (let ((__obj84880
                                                           _%klass74689%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj84880
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj84880
                                                             '4
                                                             '#f
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           __obj84880
                                                           'slots)))
                                                    (let ((__obj84881
                                                           _%klass74689%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##structure-direct-instance-of?
                                                             __obj84881
                                                             'gerbil.core#class-type-info::t))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##unchecked-structure-ref
                                                             __obj84881
                                                             '3
                                                             '#f
                                                             '#f))
                                                          (class-slot-ref
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           __obj84881
                                                           'super))))))
                                              (let ((__obj84882
                                                     _%klass74689%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##structure-direct-instance-of?
                                                       __obj84882
                                                       'gerbil.core#class-type-info::t))
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-set!
                                                       __obj84882
                                                       _%ordered74698%_
                                                       '6
                                                       '#f
                                                       '#f))
                                                    (class-slot-set!
                                                     gerbil/core/mop~MOP-2#class-type-info::t
                                                     __obj84882
                                                     'ordered-slots
                                                     _%ordered74698%_)))
                                              _%ordered74698%_)))
                                      '()))
                                 (_%r-fields74704%_
                                  (reverse _%base-fields74701%_))
                                 (_%seen-slots74715%_
                                  (let ((_%tab74707%_ (make-hash-table-eq)))
                                    (for-each
                                     (lambda (_%g7470974711%_)
                                       (hash-put!
                                        _%tab74707%_
                                        _%g7470974711%_
                                        '#t))
                                     _%base-fields74701%_)
                                    _%tab74707%_))
                                 (_%process-slot74721%_
                                  (lambda (_%slot74718%_)
                                    (if (hash-get
                                         _%seen-slots74715%_
                                         _%slot74718%_)
                                        '#!void
                                        (begin
                                          (hash-put!
                                           _%seen-slots74715%_
                                           _%slot74718%_
                                           '#t)
                                          (set! _%r-fields74704%_
                                                (cons _%slot74718%_
                                                      _%r-fields74704%_)))))))
                            (for-each
                             (lambda (_%mixin74726%_)
                               (let ((_%klass74729%_
                                      (gx#syntax-local-value _%mixin74726%_)))
                                 (if (let ((__obj84883 _%klass74729%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              __obj84883
                                              'gerbil.core#class-type-info::t))
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              __obj84883
                                              '7
                                              '#f
                                              '#f))
                                           (class-slot-ref
                                            gerbil/core/mop~MOP-2#class-type-info::t
                                            __obj84883
                                            'struct?)))
                                     '#!void
                                     (let ((_%$e74732%_
                                            (let ((__obj84884 _%klass74729%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     __obj84884
                                                     'gerbil.core#class-type-info::t))
                                                  (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     __obj84884
                                                     '6
                                                     '#f
                                                     '#f))
                                                  (class-slot-ref
                                                   gerbil/core/mop~MOP-2#class-type-info::t
                                                   __obj84884
                                                   'ordered-slots)))))
                                       (if _%$e74732%_
                                           ((lambda (_%ordered74736%_)
                                              (for-each
                                               _%process-slot74721%_
                                               _%ordered74736%_))
                                            _%$e74732%_)
                                           (let ((_%ordered74741%_
                                                  (_%order-slots70351%_
                                                   (let ((__obj84885
                                                          _%klass74729%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj84885
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj84885
                                                            '4
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj84885
                                                          'slots)))
                                                   (let ((__obj84886
                                                          _%klass74729%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-direct-instance-of?
                                                            __obj84886
                                                            'gerbil.core#class-type-info::t))
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            __obj84886
                                                            '3
                                                            '#f
                                                            '#f))
                                                         (class-slot-ref
                                                          gerbil/core/mop~MOP-2#class-type-info::t
                                                          __obj84886
                                                          'super))))))
                                             (let ((__obj84887 _%klass74729%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      __obj84887
                                                      'gerbil.core#class-type-info::t))
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-set!
                                                      __obj84887
                                                      _%ordered74741%_
                                                      '6
                                                      '#f
                                                      '#f))
                                                   (class-slot-set!
                                                    gerbil/core/mop~MOP-2#class-type-info::t
                                                    __obj84887
                                                    'ordered-slots
                                                    _%ordered74741%_)))
                                             (for-each
                                              _%process-slot74721%_
                                              _%ordered74741%_)))))))
                             _%precedence-list74685%_)
                            (for-each _%process-slot74721%_ _%slots74675%_)
                            (reverse _%r-fields74704%_)))))))
                 (_%wrap70352%_
                  (lambda (_%e-stx74672%_)
                    (gx#stx-wrap-source
                     _%e-stx74672%_
                     (gx#stx-source _%stx70329%_))))
                 (_%generate-defclass70353%_
                  (lambda (_%id70487%_
                           _%super-ref70489%_
                           _%slots70490%_
                           _%body70491%_)
                    (letrec ((_%make-id70493%_
                              (lambda _%args74669%_
                                (apply gx#stx-identifier
                                       _%id70487%_
                                       _%args74669%_))))
                      (gx#check-duplicate-identifiers
                       (map _%slot-name70335%_ _%slots70490%_)
                       _%stx70329%_)
                      (let ()
                        (declare (not safe))
                        (|gerbil/core/contract~Interface[1]#check-signature-spec!__%|
                         '#f
                         absent-value
                         '#f
                         _%stx70329%_
                         _%slots70490%_))
                      (_%check-typedef-body!70334%_ _%body70491%_)
                      (let ((_g85183_
                             (_%get-mixin-slots70345%_ _%super-ref70489%_)))
                        (begin
                          (let ((_g85184_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g85183_)
                                       (##values-length _g85183_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g85184_ 2)))
                                (error "Context expects 2 values" _g85184_)))
                          (let ((_%mixin-slots70496%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g85183_ 0)))
                                (_%slot-type-table70498%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g85183_ 1))))
                            (let* ((_%slot-contract-table70500%_
                                    (_%get-slot-contracts70347%_
                                     _%slots70490%_
                                     _%mixin-slots70496%_
                                     _%super-ref70489%_
                                     _%slot-type-table70498%_))
                                   (_%slot-default-table70503%_
                                    (_%get-slot-defaults70348%_
                                     _%slots70490%_
                                     _%mixin-slots70496%_
                                     _%super-ref70489%_))
                                   (_%ordered-slots70506%_
                                    (_%order-slots70351%_
                                     (map _%slot-name70335%_ _%slots70490%_)
                                     _%super-ref70489%_)))
                              (_%update-slot-types!70349%_
                               _%slots70490%_
                               _%slot-type-table70498%_)
                              (let* ((_%slots70511%_
                                      (map _%slot-name70335%_ _%slots70490%_))
                                     (_%mixin-slots70517%_
                                      (filter (lambda (_%slot70514%_)
                                                (not (memq _%slot70514%_
                                                           _%slots70511%_)))
                                              _%mixin-slots70496%_))
                                     (_%name70520%_
                                      (symbol->string (gx#stx-e _%id70487%_)))
                                     (_%super70523%_
                                      (map gx#syntax-local-value
                                           _%super-ref70489%_))
                                     (_%struct?70526%_
                                      (gx#stx-getq 'struct: _%body70491%_))
                                     (_%g7052970537%_
                                      (lambda (_%g7053070533%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g7053070533%_)))
                                     (_%g7052874665%_
                                      (lambda (_%g7053070541%_)
                                        ((lambda (_%L70544%_)
                                           (let* ((_%g7056770575%_
                                                   (lambda (_%g7056870571%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g7056870571%_)))
                                                  (_%g7056674661%_
                                                   (lambda (_%g7056870579%_)
                                                     ((lambda (_%L70582%_)
                                                        (let* ((_%g7059570603%_
                                                                (lambda (_%g7059670599%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g7059670599%_)))
                       (_%g7059474657%_
                        (lambda (_%g7059670607%_)
                          ((lambda (_%L70610%_)
                             (let* ((_%g7062370631%_
                                     (lambda (_%g7062470627%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g7062470627%_)))
                                    (_%g7062274653%_
                                     (lambda (_%g7062470635%_)
                                       ((lambda (_%L70638%_)
                                          (let* ((_%g7065170659%_
                                                  (lambda (_%g7065270655%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g7065270655%_)))
                                                 (_%g7065074649%_
                                                  (lambda (_%g7065270663%_)
                                                    ((lambda (_%L70666%_)
                                                       (let* ((_%g7067970696%_
                                                               (lambda (_%g7068070692%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g7068070692%_)))
                      (_%g7067874645%_
                       (lambda (_%g7068070700%_)
                         (if (gx#stx-pair/null? _%g7068070700%_)
                             (let ((_g85185_
                                    (gx#syntax-split-splice
                                     _%g7068070700%_
                                     '0)))
                               (begin
                                 (let ((_g85186_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g85185_)
                                              (##values-length _g85185_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g85186_ 2)))
                                       (error "Context expects 2 values"
                                              _g85186_)))
                                 (let ((_%target7068270703%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g85185_ 0)))
                                       (_%tl7068470706%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g85185_ 1))))
                                   (if (gx#stx-null? _%tl7068470706%_)
                                       (letrec ((_%loop7068570709%_
                                                 (lambda (_%hd7068370713%_
                                                          _%slot7068970716%_)
                                                   (if (gx#stx-pair?
                                                        _%hd7068370713%_)
                                                       (let ((_%e7068670719%_
                                                              (gx#syntax-e
                                                               _%hd7068370713%_)))
                                                         (let ((_%lp-hd7068770723%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e7068670719%_)))
                       (_%lp-tl7068870726%_
                        (let () (declare (not safe)) (##cdr _%e7068670719%_))))
                   (_%loop7068570709%_
                    _%lp-tl7068870726%_
                    (cons _%lp-hd7068770723%_ _%slot7068970716%_))))
               (let ((_%slot7069070729%_ (reverse _%slot7068970716%_)))
                 ((lambda (_%L70733%_)
                    (let* ((_%g7075070767%_
                            (lambda (_%g7075170763%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g7075170763%_)))
                           (_%g7074974641%_
                            (lambda (_%g7075170771%_)
                              (if (gx#stx-pair/null? _%g7075170771%_)
                                  (let ((_g85187_
                                         (gx#syntax-split-splice
                                          _%g7075170771%_
                                          '0)))
                                    (begin
                                      (let ((_g85188_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g85187_)
                                                   (##values-length _g85187_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g85188_ 2)))
                                            (error "Context expects 2 values"
                                                   _g85188_)))
                                      (let ((_%target7075370774%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g85187_ 0)))
                                            (_%tl7075570777%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g85187_ 1))))
                                        (if (gx#stx-null? _%tl7075570777%_)
                                            (letrec ((_%loop7075670780%_
                                                      (lambda (_%hd7075470784%_
                                                               _%ordered-slot7076070787%_)
                                                        (if (gx#stx-pair?
                                                             _%hd7075470784%_)
                                                            (let ((_%e7075770790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd7075470784%_)))
                      (let ((_%lp-hd7075870794%_
                             (let ()
                               (declare (not safe))
                               (##car _%e7075770790%_)))
                            (_%lp-tl7075970797%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e7075770790%_))))
                        (_%loop7075670780%_
                         _%lp-tl7075970797%_
                         (cons _%lp-hd7075870794%_
                               _%ordered-slot7076070787%_))))
                    (let ((_%ordered-slot7076170800%_
                           (reverse _%ordered-slot7076070787%_)))
                      ((lambda (_%L70804%_)
                         (let* ((_%g7082170838%_
                                 (lambda (_%g7082270834%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g7082270834%_)))
                                (_%g7082074632%_
                                 (lambda (_%g7082270842%_)
                                   (if (gx#stx-pair/null? _%g7082270842%_)
                                       (let ((_g85189_
                                              (gx#syntax-split-splice
                                               _%g7082270842%_
                                               '0)))
                                         (begin
                                           (let ((_g85190_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g85189_)
                                                        (##values-length
                                                         _g85189_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g85190_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g85190_)))
                                           (let ((_%target7082470845%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g85189_ 0)))
                                                 (_%tl7082670848%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g85189_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl7082670848%_)
                                                 (letrec ((_%loop7082770851%_
                                                           (lambda (_%hd7082570855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%getf7083170858%_)
                     (if (gx#stx-pair? _%hd7082570855%_)
                         (let ((_%e7082870861%_
                                (gx#syntax-e _%hd7082570855%_)))
                           (let ((_%lp-hd7082970865%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7082870861%_)))
                                 (_%lp-tl7083070868%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7082870861%_))))
                             (_%loop7082770851%_
                              _%lp-tl7083070868%_
                              (cons _%lp-hd7082970865%_ _%getf7083170858%_))))
                         (let ((_%getf7083270871%_
                                (reverse _%getf7083170858%_)))
                           ((lambda (_%L70875%_)
                              (let* ((_%g7089270909%_
                                      (lambda (_%g7089370905%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g7089370905%_)))
                                     (_%g7089174623%_
                                      (lambda (_%g7089370913%_)
                                        (if (gx#stx-pair/null? _%g7089370913%_)
                                            (let ((_g85191_
                                                   (gx#syntax-split-splice
                                                    _%g7089370913%_
                                                    '0)))
                                              (begin
                                                (let ((_g85192_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g85191_)
                                                             (##values-length
                                                              _g85191_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g85192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g85192_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target7089570916%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g85191_
                                                          0)))
                                                      (_%tl7089770919%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g85191_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl7089770919%_)
                                                      (letrec ((_%loop7089870922%_
                                                                (lambda (_%hd7089670926%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%setf7090270929%_)
                          (if (gx#stx-pair? _%hd7089670926%_)
                              (let ((_%e7089970932%_
                                     (gx#syntax-e _%hd7089670926%_)))
                                (let ((_%lp-hd7090070936%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7089970932%_)))
                                      (_%lp-tl7090170939%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7089970932%_))))
                                  (_%loop7089870922%_
                                   _%lp-tl7090170939%_
                                   (cons _%lp-hd7090070936%_
                                         _%setf7090270929%_))))
                              (let ((_%setf7090370942%_
                                     (reverse _%setf7090270929%_)))
                                ((lambda (_%L70946%_)
                                   (let* ((_%g7096370980%_
                                           (lambda (_%g7096470976%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g7096470976%_)))
                                          (_%g7096274614%_
                                           (lambda (_%g7096470984%_)
                                             (if (gx#stx-pair/null?
                                                  _%g7096470984%_)
                                                 (let ((_g85193_
                                                        (gx#syntax-split-splice
                                                         _%g7096470984%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g85194_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g85193_)
                          (##values-length _g85193_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g85194_ 2)))
                   (error "Context expects 2 values" _g85194_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target7096670987%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g85193_
                                                               0)))
                                                           (_%tl7096870990%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g85193_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl7096870990%_)
                                                           (letrec ((_%loop7096970993%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd7096770997%_ _%rawsetf7097371000%_)
                               (if (gx#stx-pair? _%hd7096770997%_)
                                   (let ((_%e7097071003%_
                                          (gx#syntax-e _%hd7096770997%_)))
                                     (let ((_%lp-hd7097171007%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e7097071003%_)))
                                           (_%lp-tl7097271010%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e7097071003%_))))
                                       (_%loop7096970993%_
                                        _%lp-tl7097271010%_
                                        (cons _%lp-hd7097171007%_
                                              _%rawsetf7097371000%_))))
                                   (let ((_%rawsetf7097471013%_
                                          (reverse _%rawsetf7097371000%_)))
                                     ((lambda (_%L71017%_)
                                        (let* ((_%g7103471051%_
                                                (lambda (_%g7103571047%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g7103571047%_)))
                                               (_%g7103374610%_
                                                (lambda (_%g7103571055%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g7103571055%_)
                                                      (let ((_g85195_
                                                             (gx#syntax-split-splice
                                                              _%g7103571055%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g85196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g85195_)
                               (##values-length _g85195_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g85196_ 2)))
                        (error "Context expects 2 values" _g85196_)))
                  (let ((_%target7103771058%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g85195_ 0)))
                        (_%tl7103971061%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g85195_ 1))))
                    (if (gx#stx-null? _%tl7103971061%_)
                        (letrec ((_%loop7104071064%_
                                  (lambda (_%hd7103871068%_
                                           _%mixin-slot7104471071%_)
                                    (if (gx#stx-pair? _%hd7103871068%_)
                                        (let ((_%e7104171074%_
                                               (gx#syntax-e _%hd7103871068%_)))
                                          (let ((_%lp-hd7104271078%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e7104171074%_)))
                                                (_%lp-tl7104371081%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e7104171074%_))))
                                            (_%loop7104071064%_
                                             _%lp-tl7104371081%_
                                             (cons _%lp-hd7104271078%_
                                                   _%mixin-slot7104471071%_))))
                                        (let ((_%mixin-slot7104571084%_
                                               (reverse _%mixin-slot7104471071%_)))
                                          ((lambda (_%L71088%_)
                                             (let* ((_%g7110571122%_
                                                     (lambda (_%g7110671118%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7110671118%_)))
                                                    (_%g7110474601%_
                                                     (lambda (_%g7110671126%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g7110671126%_)
                                                           (let ((_g85197_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g7110671126%_ '0)))
                     (begin
                       (let ((_g85198_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g85197_)
                                    (##values-length _g85197_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g85198_ 2)))
                             (error "Context expects 2 values" _g85198_)))
                       (let ((_%target7110871129%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g85197_ 0)))
                             (_%tl7111071132%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g85197_ 1))))
                         (if (gx#stx-null? _%tl7111071132%_)
                             (letrec ((_%loop7111171135%_
                                       (lambda (_%hd7110971139%_
                                                _%mixin-getf7111571142%_)
                                         (if (gx#stx-pair? _%hd7110971139%_)
                                             (let ((_%e7111271145%_
                                                    (gx#syntax-e
                                                     _%hd7110971139%_)))
                                               (let ((_%lp-hd7111371149%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7111271145%_)))
                                                     (_%lp-tl7111471152%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7111271145%_))))
                                                 (_%loop7111171135%_
                                                  _%lp-tl7111471152%_
                                                  (cons _%lp-hd7111371149%_
                                                        _%mixin-getf7111571142%_))))
                                             (let ((_%mixin-getf7111671155%_
                                                    (reverse _%mixin-getf7111571142%_)))
                                               ((lambda (_%L71159%_)
                                                  (let* ((_%g7117671193%_
                                                          (lambda (_%g7117771189%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g7117771189%_)))
                                                         (_%g7117574592%_
                                                          (lambda (_%g7117771197%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g7117771197%_)
                        (let ((_g85199_
                               (gx#syntax-split-splice _%g7117771197%_ '0)))
                          (begin
                            (let ((_g85200_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g85199_)
                                         (##values-length _g85199_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g85200_ 2)))
                                  (error "Context expects 2 values" _g85200_)))
                            (let ((_%target7117971200%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g85199_ 0)))
                                  (_%tl7118171203%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g85199_ 1))))
                              (if (gx#stx-null? _%tl7118171203%_)
                                  (letrec ((_%loop7118271206%_
                                            (lambda (_%hd7118071210%_
                                                     _%mixin-setf7118671213%_)
                                              (if (gx#stx-pair?
                                                   _%hd7118071210%_)
                                                  (let ((_%e7118371216%_
                                                         (gx#syntax-e
                                                          _%hd7118071210%_)))
                                                    (let ((_%lp-hd7118471220%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e7118371216%_)))
                                                          (_%lp-tl7118571223%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e7118371216%_))))
                                                      (_%loop7118271206%_
                                                       _%lp-tl7118571223%_
                                                       (cons _%lp-hd7118471220%_
                                                             _%mixin-setf7118671213%_))))
                                                  (let ((_%mixin-setf7118771226%_
                                                         (reverse _%mixin-setf7118671213%_)))
                                                    ((lambda (_%L71230%_)
                                                       (let* ((_%g7124771264%_
                                                               (lambda (_%g7124871260%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g7124871260%_)))
                      (_%g7124674583%_
                       (lambda (_%g7124871268%_)
                         (if (gx#stx-pair/null? _%g7124871268%_)
                             (let ((_g85201_
                                    (gx#syntax-split-splice
                                     _%g7124871268%_
                                     '0)))
                               (begin
                                 (let ((_g85202_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g85201_)
                                              (##values-length _g85201_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g85202_ 2)))
                                       (error "Context expects 2 values"
                                              _g85202_)))
                                 (let ((_%target7125071271%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g85201_ 0)))
                                       (_%tl7125271274%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g85201_ 1))))
                                   (if (gx#stx-null? _%tl7125271274%_)
                                       (letrec ((_%loop7125371277%_
                                                 (lambda (_%hd7125171281%_
                                                          _%mixin-rawsetf7125771284%_)
                                                   (if (gx#stx-pair?
                                                        _%hd7125171281%_)
                                                       (let ((_%e7125471287%_
                                                              (gx#syntax-e
                                                               _%hd7125171281%_)))
                                                         (let ((_%lp-hd7125571291%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e7125471287%_)))
                       (_%lp-tl7125671294%_
                        (let () (declare (not safe)) (##cdr _%e7125471287%_))))
                   (_%loop7125371277%_
                    _%lp-tl7125671294%_
                    (cons _%lp-hd7125571291%_ _%mixin-rawsetf7125771284%_))))
               (let ((_%mixin-rawsetf7125871297%_
                      (reverse _%mixin-rawsetf7125771284%_)))
                 ((lambda (_%L71301%_)
                    (let* ((_%g7131871335%_
                            (lambda (_%g7131971331%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g7131971331%_)))
                           (_%g7131774566%_
                            (lambda (_%g7131971339%_)
                              (if (gx#stx-pair/null? _%g7131971339%_)
                                  (let ((_g85203_
                                         (gx#syntax-split-splice
                                          _%g7131971339%_
                                          '0)))
                                    (begin
                                      (let ((_g85204_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g85203_)
                                                   (##values-length _g85203_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g85204_ 2)))
                                            (error "Context expects 2 values"
                                                   _g85204_)))
                                      (let ((_%target7132171342%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g85203_ 0)))
                                            (_%tl7132371345%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g85203_ 1))))
                                        (if (gx#stx-null? _%tl7132371345%_)
                                            (letrec ((_%loop7132471348%_
                                                      (lambda (_%hd7132271352%_
                                                               _%ugetf7132871355%_)
                                                        (if (gx#stx-pair?
                                                             _%hd7132271352%_)
                                                            (let ((_%e7132571358%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd7132271352%_)))
                      (let ((_%lp-hd7132671362%_
                             (let ()
                               (declare (not safe))
                               (##car _%e7132571358%_)))
                            (_%lp-tl7132771365%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e7132571358%_))))
                        (_%loop7132471348%_
                         _%lp-tl7132771365%_
                         (cons _%lp-hd7132671362%_ _%ugetf7132871355%_))))
                    (let ((_%ugetf7132971368%_ (reverse _%ugetf7132871355%_)))
                      ((lambda (_%L71372%_)
                         (let* ((_%g7138971406%_
                                 (lambda (_%g7139071402%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g7139071402%_)))
                                (_%g7138874549%_
                                 (lambda (_%g7139071410%_)
                                   (if (gx#stx-pair/null? _%g7139071410%_)
                                       (let ((_g85205_
                                              (gx#syntax-split-splice
                                               _%g7139071410%_
                                               '0)))
                                         (begin
                                           (let ((_g85206_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g85205_)
                                                        (##values-length
                                                         _g85205_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g85206_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g85206_)))
                                           (let ((_%target7139271413%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g85205_ 0)))
                                                 (_%tl7139471416%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g85205_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl7139471416%_)
                                                 (letrec ((_%loop7139571419%_
                                                           (lambda (_%hd7139371423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%usetf7139971426%_)
                     (if (gx#stx-pair? _%hd7139371423%_)
                         (let ((_%e7139671429%_
                                (gx#syntax-e _%hd7139371423%_)))
                           (let ((_%lp-hd7139771433%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7139671429%_)))
                                 (_%lp-tl7139871436%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7139671429%_))))
                             (_%loop7139571419%_
                              _%lp-tl7139871436%_
                              (cons _%lp-hd7139771433%_ _%usetf7139971426%_))))
                         (let ((_%usetf7140071439%_
                                (reverse _%usetf7139971426%_)))
                           ((lambda (_%L71443%_)
                              (let* ((_%g7146071477%_
                                      (lambda (_%g7146171473%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g7146171473%_)))
                                     (_%g7145974532%_
                                      (lambda (_%g7146171481%_)
                                        (if (gx#stx-pair/null? _%g7146171481%_)
                                            (let ((_g85207_
                                                   (gx#syntax-split-splice
                                                    _%g7146171481%_
                                                    '0)))
                                              (begin
                                                (let ((_g85208_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g85207_)
                                                             (##values-length
                                                              _g85207_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g85208_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g85208_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target7146371484%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g85207_
                                                          0)))
                                                      (_%tl7146571487%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g85207_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl7146571487%_)
                                                      (letrec ((_%loop7146671490%_
                                                                (lambda (_%hd7146471494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%mixin-ugetf7147071497%_)
                          (if (gx#stx-pair? _%hd7146471494%_)
                              (let ((_%e7146771500%_
                                     (gx#syntax-e _%hd7146471494%_)))
                                (let ((_%lp-hd7146871504%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7146771500%_)))
                                      (_%lp-tl7146971507%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7146771500%_))))
                                  (_%loop7146671490%_
                                   _%lp-tl7146971507%_
                                   (cons _%lp-hd7146871504%_
                                         _%mixin-ugetf7147071497%_))))
                              (let ((_%mixin-ugetf7147171510%_
                                     (reverse _%mixin-ugetf7147071497%_)))
                                ((lambda (_%L71514%_)
                                   (let* ((_%g7153171548%_
                                           (lambda (_%g7153271544%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g7153271544%_)))
                                          (_%g7153074515%_
                                           (lambda (_%g7153271552%_)
                                             (if (gx#stx-pair/null?
                                                  _%g7153271552%_)
                                                 (let ((_g85209_
                                                        (gx#syntax-split-splice
                                                         _%g7153271552%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g85210_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g85209_)
                          (##values-length _g85209_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g85210_ 2)))
                   (error "Context expects 2 values" _g85210_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target7153471555%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g85209_
                                                               0)))
                                                           (_%tl7153671558%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g85209_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl7153671558%_)
                                                           (letrec ((_%loop7153771561%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd7153571565%_
                                      _%mixin-usetf7154171568%_)
                               (if (gx#stx-pair? _%hd7153571565%_)
                                   (let ((_%e7153871571%_
                                          (gx#syntax-e _%hd7153571565%_)))
                                     (let ((_%lp-hd7153971575%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e7153871571%_)))
                                           (_%lp-tl7154071578%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e7153871571%_))))
                                       (_%loop7153771561%_
                                        _%lp-tl7154071578%_
                                        (cons _%lp-hd7153971575%_
                                              _%mixin-usetf7154171568%_))))
                                   (let ((_%mixin-usetf7154271581%_
                                          (reverse _%mixin-usetf7154171568%_)))
                                     ((lambda (_%L71585%_)
                                        (let* ((_%type-slots71747%_
                                                (if (gx#stx-null?
                                                     _%slots70511%_)
                                                    '()
                                                    (cons 'slots:
                                                          (cons (map (lambda (_%slot71606%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%getf71608%_
                                      _%setf71609%_
                                      _%rawsetf71610%_)
                               (let* ((_%g7161271635%_
                                       (lambda (_%g7161371631%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g7161371631%_)))
                                      (_%g7161171711%_
                                       (lambda (_%g7161371639%_)
                                         (if (gx#stx-pair? _%g7161371639%_)
                                             (let ((_%e7161871642%_
                                                    (gx#syntax-e
                                                     _%g7161371639%_)))
                                               (let ((_%hd7161971646%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7161871642%_)))
                                                     (_%tl7162071649%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7161871642%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl7162071649%_)
                                                     (let ((_%e7162171652%_
                                                            (gx#syntax-e
                                                             _%tl7162071649%_)))
                                                       (let ((_%hd7162271656%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e7162171652%_)))
                     (_%tl7162371659%_
                      (let () (declare (not safe)) (##cdr _%e7162171652%_))))
                 (if (gx#stx-pair? _%tl7162371659%_)
                     (let ((_%e7162471662%_ (gx#syntax-e _%tl7162371659%_)))
                       (let ((_%hd7162571666%_
                              (let ()
                                (declare (not safe))
                                (##car _%e7162471662%_)))
                             (_%tl7162671669%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e7162471662%_))))
                         (if (gx#stx-pair? _%tl7162671669%_)
                             (let ((_%e7162771672%_
                                    (gx#syntax-e _%tl7162671669%_)))
                               (let ((_%hd7162871676%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e7162771672%_)))
                                     (_%tl7162971679%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e7162771672%_))))
                                 (if (gx#stx-null? _%tl7162971679%_)
                                     ((lambda (_%L71682%_
                                               _%L71684%_
                                               _%L71685%_
                                               _%L71686%_)
                                        (if (hash-get
                                             _%slot-contract-table70500%_
                                             (gx#stx-e _%L71686%_))
                                            (cons _%L71686%_
                                                  (cons _%L71685%_
                                                        (cons _%L71682%_ '())))
                                            (cons _%L71686%_
                                                  (cons _%L71685%_
                                                        (cons _%L71684%_
                                                              '())))))
                                      _%hd7162871676%_
                                      _%hd7162571666%_
                                      _%hd7162271656%_
                                      _%hd7161971646%_)
                                     (_%g7161271635%_ _%g7161371639%_))))
                             (_%g7161271635%_ _%g7161371639%_))))
                     (_%g7161271635%_ _%g7161371639%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7161271635%_
                                                      _%g7161371639%_))))
                                             (_%g7161271635%_
                                              _%g7161371639%_)))))
                                 (_%g7161171711%_
                                  (list _%slot71606%_
                                        _%getf71608%_
                                        _%setf71609%_
                                        _%rawsetf71610%_))))
                             (foldr (lambda (_%g7171471717%_ _%g7171571720%_)
                                      (cons _%g7171471717%_ _%g7171571720%_))
                                    '()
                                    _%L70733%_)
                             (foldr (lambda (_%g7172271725%_ _%g7172371728%_)
                                      (cons _%g7172271725%_ _%g7172371728%_))
                                    '()
                                    _%L70875%_)
                             (foldr (lambda (_%g7173071733%_ _%g7173171736%_)
                                      (cons _%g7173071733%_ _%g7173171736%_))
                                    '()
                                    _%L70946%_)
                             (foldr (lambda (_%g7173871741%_ _%g7173971744%_)
                                      (cons _%g7173871741%_ _%g7173971744%_))
                                    '()
                                    _%L71017%_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%type-mixin-slots71894%_
                                                (if (gx#stx-null?
                                                     _%mixin-slots70517%_)
                                                    '()
                                                    (cons 'mixin:
                                                          (cons (map (lambda (_%slot71754%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%getf71756%_
                                      _%setf71757%_
                                      _%rawsetf71758%_)
                               (let* ((_%g7176071783%_
                                       (lambda (_%g7176171779%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g7176171779%_)))
                                      (_%g7175971858%_
                                       (lambda (_%g7176171787%_)
                                         (if (gx#stx-pair? _%g7176171787%_)
                                             (let ((_%e7176671790%_
                                                    (gx#syntax-e
                                                     _%g7176171787%_)))
                                               (let ((_%hd7176771794%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7176671790%_)))
                                                     (_%tl7176871797%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7176671790%_))))
                                                 (if (gx#stx-pair?
                                                      _%tl7176871797%_)
                                                     (let ((_%e7176971800%_
                                                            (gx#syntax-e
                                                             _%tl7176871797%_)))
                                                       (let ((_%hd7177071804%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e7176971800%_)))
                     (_%tl7177171807%_
                      (let () (declare (not safe)) (##cdr _%e7176971800%_))))
                 (if (gx#stx-pair? _%tl7177171807%_)
                     (let ((_%e7177271810%_ (gx#syntax-e _%tl7177171807%_)))
                       (let ((_%hd7177371814%_
                              (let ()
                                (declare (not safe))
                                (##car _%e7177271810%_)))
                             (_%tl7177471817%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e7177271810%_))))
                         (if (gx#stx-pair? _%tl7177471817%_)
                             (let ((_%e7177571820%_
                                    (gx#syntax-e _%tl7177471817%_)))
                               (let ((_%hd7177671824%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e7177571820%_)))
                                     (_%tl7177771827%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e7177571820%_))))
                                 (if (gx#stx-null? _%tl7177771827%_)
                                     ((lambda (_%L71830%_
                                               _%L71832%_
                                               _%L71833%_
                                               _%L71834%_)
                                        (if (hash-get
                                             _%slot-contract-table70500%_
                                             (gx#stx-e _%L71834%_))
                                            (cons _%L71834%_
                                                  (cons _%L71833%_
                                                        (cons _%L71830%_ '())))
                                            (cons _%L71834%_
                                                  (cons _%L71833%_
                                                        (cons _%L71832%_
                                                              '())))))
                                      _%hd7177671824%_
                                      _%hd7177371814%_
                                      _%hd7177071804%_
                                      _%hd7176771794%_)
                                     (_%g7176071783%_ _%g7176171787%_))))
                             (_%g7176071783%_ _%g7176171787%_))))
                     (_%g7176071783%_ _%g7176171787%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7176071783%_
                                                      _%g7176171787%_))))
                                             (_%g7176071783%_
                                              _%g7176171787%_)))))
                                 (_%g7175971858%_
                                  (list _%slot71754%_
                                        _%getf71756%_
                                        _%setf71757%_
                                        _%rawsetf71758%_))))
                             (foldr (lambda (_%g7186171864%_ _%g7186271867%_)
                                      (cons _%g7186171864%_ _%g7186271867%_))
                                    '()
                                    _%L71088%_)
                             (foldr (lambda (_%g7186971872%_ _%g7187071875%_)
                                      (cons _%g7186971872%_ _%g7187071875%_))
                                    '()
                                    _%L71159%_)
                             (foldr (lambda (_%g7187771880%_ _%g7187871883%_)
                                      (cons _%g7187771880%_ _%g7187871883%_))
                                    '()
                                    _%L71230%_)
                             (foldr (lambda (_%g7188571888%_ _%g7188671891%_)
                                      (cons _%g7188571888%_ _%g7188671891%_))
                                    '()
                                    _%L71301%_))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%type-name71901%_
                                                (cons 'name:
                                                      (cons (let ((_%$e71897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'name: _%body70491%_)))
                      (if _%$e71897%_ _%$e71897%_ _%id70487%_))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%type-id71908%_
                                                (cons 'id:
                                                      (cons (let ((_%$e71904%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'id: _%body70491%_)))
                      (if _%$e71904%_
                          _%$e71904%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                             _%L70544%_))))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%type-constructor71923%_
                                                (let ((_%$e71919%_
                                                       (let ((_%e7191071912%_
                                                              (gx#stx-getq
                                                               'constructor:
                                                               _%body70491%_)))
                                                         (if _%e7191071912%_
                                                             (let ((_%e71916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%e7191071912%_))
                       (cons 'constructor: (cons _%e71916%_ '())))
                     '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _%$e71919%_
                                                      _%$e71919%_
                                                      '())))
                                               (_%properties71977%_
                                                (let* ((_%properties71926%_
                                                        (if (gx#stx-e
                                                             (gx#stx-getq
                                                              'transparent:
                                                              _%body70491%_))
                                                            (cons (cons 'transparent:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#t)
                          '())
                    '()))
               (_%properties71949%_
                (let ((_%$e71929%_
                       (gx#stx-e (gx#stx-getq 'print: _%body70491%_))))
                  (if _%$e71929%_
                      ((lambda (_%print71933%_)
                         (let ((_%print71944%_
                                (if (eq? _%print71933%_ '#t)
                                    (foldr (lambda (_%g7193571938%_
                                                    _%g7193671941%_)
                                             (cons _%g7193571938%_
                                                   _%g7193671941%_))
                                           '()
                                           _%L70733%_)
                                    _%print71933%_)))
                           (cons (cons 'print: _%print71944%_)
                                 _%properties71926%_)))
                       _%$e71929%_)
                      _%properties71926%_)))
               (_%properties71972%_
                (let ((_%$e71952%_
                       (gx#stx-e (gx#stx-getq 'equal: _%body70491%_))))
                  (if _%$e71952%_
                      ((lambda (_%equal71956%_)
                         (let ((_%equal71967%_
                                (if (eq? _%equal71956%_ '#t)
                                    (foldr (lambda (_%g7195871961%_
                                                    _%g7195971964%_)
                                             (cons _%g7195871961%_
                                                   _%g7195971964%_))
                                           '()
                                           _%L70733%_)
                                    _%equal71956%_)))
                           (cons (cons 'equal: _%equal71967%_)
                                 _%properties71949%_)))
                       _%$e71952%_)
                      _%properties71949%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%properties71972%_))
                                               (_%type-properties72015%_
                                                (if (null? _%properties71977%_)
                                                    '()
                                                    (let* ((_%g7198071988%_
                                                            (lambda (_%g7198171984%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g7198171984%_)))
                                                           (_%g7197972011%_
                                                            (lambda (_%g7198171992%_)
                                                              ((lambda (_%L71995%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons 'properties:
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L71995%_ '()))
                                     '())))
                       _%g7198171992%_))))
              (_%g7197972011%_ _%properties71977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%metaclass72027%_
                                                (let ((_%$e72018%_
                                                       (gx#stx-getq
                                                        'metaclass:
                                                        _%body70491%_)))
                                                  (if _%$e72018%_
                                                      ((lambda (_%metaclass72022%_)
                                                         (if (gx#identifier?
                                                              _%metaclass72022%_)
                                                             _%metaclass72022%_
                                                             '#f))
                                                       _%$e72018%_)
                                                      '#f)))
                                               (_%final?72030%_
                                                (gx#stx-e
                                                 (gx#stx-getq
                                                  'final:
                                                  _%body70491%_)))
                                               (_%type-struct72033%_
                                                (cons 'struct:
                                                      (cons _%struct?70526%_
                                                            '())))
                                               (_%type-final72036%_
                                                (cons 'final:
                                                      (cons _%final?72030%_
                                                            '())))
                                               (_%type-metaclass72039%_
                                                (if _%metaclass72027%_
                                                    (cons 'metaclass:
                                                          (cons _%metaclass72027%_
                                                                '()))
                                                    '()))
                                               (_%g7204272059%_
                                                (lambda (_%g7204372055%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g7204372055%_)))
                                               (_%g7204174511%_
                                                (lambda (_%g7204372063%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g7204372063%_)
                                                      (let ((_g85211_
                                                             (gx#syntax-split-splice
                                                              _%g7204372063%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g85212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g85211_)
                               (##values-length _g85211_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g85212_ 2)))
                        (error "Context expects 2 values" _g85212_)))
                  (let ((_%target7204572066%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g85211_ 0)))
                        (_%tl7204772069%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g85211_ 1))))
                    (if (gx#stx-null? _%tl7204772069%_)
                        (letrec ((_%loop7204872072%_
                                  (lambda (_%hd7204672076%_
                                           _%type-body7205272079%_)
                                    (if (gx#stx-pair? _%hd7204672076%_)
                                        (let ((_%e7204972082%_
                                               (gx#syntax-e _%hd7204672076%_)))
                                          (let ((_%lp-hd7205072086%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e7204972082%_)))
                                                (_%lp-tl7205172089%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e7204972082%_))))
                                            (_%loop7204872072%_
                                             _%lp-tl7205172089%_
                                             (cons _%lp-hd7205072086%_
                                                   _%type-body7205272079%_))))
                                        (let ((_%type-body7205372092%_
                                               (reverse _%type-body7205272079%_)))
                                          ((lambda (_%L72096%_)
                                             (let* ((_%g7211772125%_
                                                     (lambda (_%g7211872121%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7211872121%_)))
                                                    (_%g7211674499%_
                                                     (lambda (_%g7211872129%_)
                                                       ((lambda (_%L72132%_)
                                                          (let* ((_%g7214572153%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g7214672149%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g7214672149%_)))
                         (_%g7214474487%_
                          (lambda (_%g7214672157%_)
                            ((lambda (_%L72160%_)
                               (let* ((_%g7217372181%_
                                       (lambda (_%g7217472177%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%g7217472177%_)))
                                      (_%g7217274416%_
                                       (lambda (_%g7217472185%_)
                                         ((lambda (_%L72188%_)
                                            (let* ((_%g7220172209%_
                                                    (lambda (_%g7220272205%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%g7220272205%_)))
                                                   (_%g7220074381%_
                                                    (lambda (_%g7220272213%_)
                                                      ((lambda (_%L72216%_)
                                                         (let* ((_%g7222972237%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g7223072233%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g7223072233%_)))
                        (_%g7222874295%_
                         (lambda (_%g7223072241%_)
                           ((lambda (_%L72244%_)
                              (let* ((_%g7225772265%_
                                      (lambda (_%g7225872261%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g7225872261%_)))
                                     (_%g7225674283%_
                                      (lambda (_%g7225872269%_)
                                        ((lambda (_%L72272%_)
                                           (let* ((_%g7228572293%_
                                                   (lambda (_%g7228672289%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%g7228672289%_)))
                                                  (_%g7228474271%_
                                                   (lambda (_%g7228672297%_)
                                                     ((lambda (_%L72300%_)
                                                        (let* ((_%g7231372321%_
                                                                (lambda (_%g7231472317%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%g7231472317%_)))
                       (_%g7231274157%_
                        (lambda (_%g7231472325%_)
                          ((lambda (_%L72328%_)
                             (let* ((_%g7234172349%_
                                     (lambda (_%g7234272345%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g7234272345%_)))
                                    (_%g7234074046%_
                                     (lambda (_%g7234272353%_)
                                       ((lambda (_%L72356%_)
                                          (let* ((_%g7236972377%_
                                                  (lambda (_%g7237072373%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%g7237072373%_)))
                                                 (_%g7236873935%_
                                                  (lambda (_%g7237072381%_)
                                                    ((lambda (_%L72384%_)
                                                       (let* ((_%g7239772405%_
                                                               (lambda (_%g7239872401%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g7239872401%_)))
                      (_%g7239673931%_
                       (lambda (_%g7239872409%_)
                         ((lambda (_%L72412%_)
                            (let* ((_%g7242572433%_
                                    (lambda (_%g7242672429%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g7242672429%_)))
                                   (_%g7242473927%_
                                    (lambda (_%g7242672437%_)
                                      ((lambda (_%L72440%_)
                                         (let* ((_%g7245372461%_
                                                 (lambda (_%g7245472457%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g7245472457%_)))
                                                (_%g7245273892%_
                                                 (lambda (_%g7245472465%_)
                                                   ((lambda (_%L72468%_)
                                                      (let* ((_%g7248172489%_
                                                              (lambda (_%g7248272485%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%g7248272485%_)))
                     (_%g7248073821%_
                      (lambda (_%g7248272493%_)
                        ((lambda (_%L72496%_)
                           (let* ((_%g7250972517%_
                                   (lambda (_%g7251072513%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%g7251072513%_)))
                                  (_%g7250873817%_
                                   (lambda (_%g7251072521%_)
                                     ((lambda (_%L72524%_)
                                        (let* ((_%g7253772545%_
                                                (lambda (_%g7253872541%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g7253872541%_)))
                                               (_%g7253673813%_
                                                (lambda (_%g7253872549%_)
                                                  ((lambda (_%L72552%_)
                                                     (let* ((_%g7256572573%_
                                                             (lambda (_%g7256672569%_)
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; invalid match target"
                                                                _%g7256672569%_)))
                                                            (_%g7256473809%_
                                                             (lambda (_%g7256672577%_)
                                                               ((lambda (_%L72580%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_%g7259372601%_
                                  (lambda (_%g7259472597%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g7259472597%_)))
                                 (_%g7259273783%_
                                  (lambda (_%g7259472605%_)
                                    ((lambda (_%L72608%_)
                                       (let* ((_%g7262172629%_
                                               (lambda (_%g7262272625%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g7262272625%_)))
                                              (_%g7262073757%_
                                               (lambda (_%g7262272633%_)
                                                 ((lambda (_%L72636%_)
                                                    (let* ((_%g7264972657%_
                                                            (lambda (_%g7265072653%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g7265072653%_)))
                                                           (_%g7264873731%_
                                                            (lambda (_%g7265072661%_)
                                                              ((lambda (_%L72664%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let* ((_%map-slot-usetf72682%_
                                 (lambda (_%slot72677%_
                                          _%setf72679%_
                                          _%rawsetf72680%_)
                                   (cons 'cons
                                         (cons (cons 'quote
                                                     (cons _%slot72677%_ '()))
                                               (cons (if (hash-get
                                                          _%slot-contract-table70500%_
                                                          (gx#stx-e
                                                           _%slot72677%_))
                                                         (cons 'quote-syntax
                                                               (cons (gx#stx-identifier
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%rawsetf72680%_
                              '"&"
                              _%rawsetf72680%_)
                             '()))
                 (cons 'quote-syntax (cons _%setf72679%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                                (_%g7268572693%_
                                 (lambda (_%g7268672689%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g7268672689%_)))
                                (_%g7268473513%_
                                 (lambda (_%g7268672697%_)
                                   ((lambda (_%L72700%_)
                                      (let* ((_%g7271472722%_
                                              (lambda (_%g7271572718%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%g7271572718%_)))
                                             (_%g7271373509%_
                                              (lambda (_%g7271572726%_)
                                                ((lambda (_%L72729%_)
                                                   (let* ((_%g7274272750%_
                                                           (lambda (_%g7274372746%_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _%g7274372746%_)))
                                                          (_%g7274172995%_
                                                           (lambda (_%g7274372754%_)
                                                             ((lambda (_%L72757%_)
                                                                (let* ((_%g7277072787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (lambda (_%g7277172783%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%g7277172783%_)))
                               (_%g7276972851%_
                                (lambda (_%g7277172791%_)
                                  (if (gx#stx-pair/null? _%g7277172791%_)
                                      (let ((_g85213_
                                             (gx#syntax-split-splice
                                              _%g7277172791%_
                                              '0)))
                                        (begin
                                          (let ((_g85214_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g85213_)
                                                       (##values-length
                                                        _g85213_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g85214_ 2)))
                                                (error "Context expects 2 values"
                                                       _g85214_)))
                                          (let ((_%target7277372794%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g85213_ 0)))
                                                (_%tl7277572797%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g85213_ 1))))
                                            (if (gx#stx-null? _%tl7277572797%_)
                                                (letrec ((_%loop7277672800%_
                                                          (lambda (_%hd7277472804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%defsetf7278072807%_)
                    (if (gx#stx-pair? _%hd7277472804%_)
                        (let ((_%e7277772810%_ (gx#syntax-e _%hd7277472804%_)))
                          (let ((_%lp-hd7277872814%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e7277772810%_)))
                                (_%lp-tl7277972817%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e7277772810%_))))
                            (_%loop7277672800%_
                             _%lp-tl7277972817%_
                             (cons _%lp-hd7277872814%_
                                   _%defsetf7278072807%_))))
                        (let ((_%defsetf7278172820%_
                               (reverse _%defsetf7278072807%_)))
                          ((lambda (_%L72824%_)
                             (cons (gx#datum->syntax '#f 'begin)
                                   (cons _%L72160%_
                                         (cons _%L72729%_
                                               (cons _%L72757%_
                                                     (foldr (lambda (_%g7284272845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%g7284372848%_)
                      (cons _%g7284272845%_ _%g7284372848%_))
                    '()
                    _%L72824%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                           _%defsetf7278172820%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop7277672800%_
                                                   _%target7277372794%_
                                                   '()))
                                                (_%g7277072787%_
                                                 _%g7277172791%_)))))
                                      (_%g7277072787%_ _%g7277172791%_)))))
                          (_%g7276972851%_
                           (let ((__tmp85215
                                  (map (lambda (_%slot72855%_
                                                _%setf72857%_
                                                _%rawsetf72858%_)
                                         (let ((_%contract7285972861%_
                                                (hash-get
                                                 _%slot-contract-table70500%_
                                                 (gx#stx-e _%slot72855%_))))
                                           (if _%contract7285972861%_
                                               (let* ((_%contract72865%_
                                                       _%contract7285972861%_)
                                                      (_%g7286872891%_
                                                       (lambda (_%g7286972887%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g7286972887%_)))
                                                      (_%g7286772967%_
                                                       (lambda (_%g7286972895%_)
                                                         (if (gx#stx-pair?
                                                              _%g7286972895%_)
                                                             (let ((_%e7287472898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%g7286972895%_)))
                       (let ((_%hd7287572902%_
                              (let ()
                                (declare (not safe))
                                (##car _%e7287472898%_)))
                             (_%tl7287672905%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e7287472898%_))))
                         (if (gx#stx-pair? _%tl7287672905%_)
                             (let ((_%e7287772908%_
                                    (gx#syntax-e _%tl7287672905%_)))
                               (let ((_%hd7287872912%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e7287772908%_)))
                                     (_%tl7287972915%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e7287772908%_))))
                                 (if (gx#stx-pair? _%tl7287972915%_)
                                     (let ((_%e7288072918%_
                                            (gx#syntax-e _%tl7287972915%_)))
                                       (let ((_%hd7288172922%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e7288072918%_)))
                                             (_%tl7288272925%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e7288072918%_))))
                                         (if (gx#stx-pair? _%tl7288272925%_)
                                             (let ((_%e7288372928%_
                                                    (gx#syntax-e
                                                     _%tl7288272925%_)))
                                               (let ((_%hd7288472932%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7288372928%_)))
                                                     (_%tl7288572935%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7288372928%_))))
                                                 (if (gx#stx-null?
                                                      _%tl7288572935%_)
                                                     ((lambda (_%L72938%_
                                                               _%L72940%_
                                                               _%L72941%_
                                                               _%L72942%_)
                                                        (_%wrap70352%_
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'def/c)
                                                               (cons (cons _%L72940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (cons (cons (gx#datum->syntax '#f '$obj)
                                               (cons (gx#datum->syntax '#f ':)
                                                     (cons _%L70544%_ '())))
                                         (cons _%L72942%_ '())))
                             (cons (gx#datum->syntax '#f '=>)
                                   (cons (gx#datum->syntax '#f ':void)
                                         (cons (cons _%L72938%_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           (cons _%L72941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))))))
              _%hd7288472932%_
              _%hd7288172922%_
              _%hd7287872912%_
              _%hd7287572902%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7286872891%_
                                                      _%g7286972895%_))))
                                             (_%g7286872891%_
                                              _%g7286972895%_))))
                                     (_%g7286872891%_ _%g7286972895%_))))
                             (_%g7286872891%_ _%g7286972895%_))))
                     (_%g7286872891%_ _%g7286972895%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g7286772967%_
                                                  (list (cons _%slot72855%_
                                                              _%contract72865%_)
                                                        _%slot72855%_
                                                        _%setf72857%_
                                                        (gx#stx-identifier
                                                         _%rawsetf72858%_
                                                         '"&"
                                                         _%rawsetf72858%_))))
                                               '#f)))
                                       (foldr (lambda (_%g7297072973%_
                                                       _%g7297172976%_)
                                                (cons _%g7297072973%_
                                                      _%g7297172976%_))
                                              '()
                                              _%L70733%_)
                                       (foldr (lambda (_%g7297872981%_
                                                       _%g7297972984%_)
                                                (cons _%g7297872981%_
                                                      _%g7297972984%_))
                                              '()
                                              _%L70946%_)
                                       (foldr (lambda (_%g7298672989%_
                                                       _%g7298772992%_)
                                                (cons _%g7298672989%_
                                                      _%g7298772992%_))
                                              '()
                                              _%L71017%_))))
                             (declare (not safe))
                             (##filter identity __tmp85215)))))
                      _%g7274372754%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7274172995%_
                                                      (if (or (not (null? _%type-constructor71923%_))
                                                              (and (zero? (hash-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   _%slot-contract-table70500%_))
                           (zero? (hash-length _%slot-default-table70503%_)))
                      _%metaclass72027%_)
                  (cons (gx#datum->syntax '#f 'begin) '())
                  (if (and _%struct?70526%_
                           (zero? (hash-length _%slot-default-table70503%_)))
                      (let* ((_%g7301173026%_
                              (lambda (_%g7301273022%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g7301273022%_)))
                             (_%g7301073080%_
                              (lambda (_%g7301273030%_)
                                (if (gx#stx-pair? _%g7301273030%_)
                                    (let ((_%e7301573033%_
                                           (gx#syntax-e _%g7301273030%_)))
                                      (let ((_%hd7301673037%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e7301573033%_)))
                                            (_%tl7301773040%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e7301573033%_))))
                                        (if (gx#stx-pair? _%tl7301773040%_)
                                            (let ((_%e7301873043%_
                                                   (gx#syntax-e
                                                    _%tl7301773040%_)))
                                              (let ((_%hd7301973047%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7301873043%_)))
                                                    (_%tl7302073050%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7301873043%_))))
                                                (if (gx#stx-null?
                                                     _%tl7302073050%_)
                                                    ((lambda (_%L73053%_
                                                              _%L73055%_)
                                                       (_%wrap70352%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'def/c)
                                                              (cons (cons _%L70610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%L73055%_)
                            (cons (gx#datum->syntax '#f '=>)
                                  (cons _%L70544%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@type)
                        (cons _%L73053%_ '()))
                  (cons (cons (gx#datum->syntax '#f '##structure)
                              (cons _%L73053%_
                                    (foldr (lambda (_%g7307173074%_
                                                    _%g7307273077%_)
                                             (cons _%g7307173074%_
                                                   _%g7307273077%_))
                                           '()
                                           _%L70804%_)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd7301973047%_
                                                     _%hd7301673037%_)
                                                    (_%g7301173026%_
                                                     _%g7301273030%_))))
                                            (_%g7301173026%_
                                             _%g7301273030%_))))
                                    (_%g7301173026%_ _%g7301273030%_)))))
                        (_%g7301073080%_
                         (list (foldr (lambda (_%slot73084%_ _%r73086%_)
                                        (let ((_%$e73088%_
                                               (hash-get
                                                _%slot-contract-table70500%_
                                                (gx#stx-e _%slot73084%_))))
                                          (if _%$e73088%_
                                              ((lambda (_%contract73092%_)
                                                 (let* ((_%g7309573119%_
                                                         (lambda (_%g7309673115%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g7309673115%_)))
                                                        (_%g7309473209%_
                                                         (lambda (_%g7309673123%_)
                                                           (if (gx#stx-pair?
                                                                _%g7309673123%_)
                                                               (let ((_%e7309973126%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%g7309673123%_)))
                         (let ((_%hd7310073130%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e7309973126%_)))
                               (_%tl7310173133%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e7309973126%_))))
                           (if (gx#stx-pair? _%tl7310173133%_)
                               (let ((_%e7310273136%_
                                      (gx#syntax-e _%tl7310173133%_)))
                                 (let ((_%hd7310373140%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e7310273136%_)))
                                       (_%tl7310473143%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e7310273136%_))))
                                   (if (gx#stx-pair/null? _%hd7310373140%_)
                                       (let ((_g85216_
                                              (gx#syntax-split-splice
                                               _%hd7310373140%_
                                               '0)))
                                         (begin
                                           (let ((_g85217_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g85216_)
                                                        (##values-length
                                                         _g85216_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g85217_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g85217_)))
                                           (let ((_%target7310573146%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g85216_ 0)))
                                                 (_%tl7310773149%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g85216_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl7310773149%_)
                                                 (letrec ((_%loop7310873152%_
                                                           (lambda (_%hd7310673156%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%contract7311273159%_)
                     (if (gx#stx-pair? _%hd7310673156%_)
                         (let ((_%e7310973162%_
                                (gx#syntax-e _%hd7310673156%_)))
                           (let ((_%lp-hd7311073166%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7310973162%_)))
                                 (_%lp-tl7311173169%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7310973162%_))))
                             (_%loop7310873152%_
                              _%lp-tl7311173169%_
                              (cons _%lp-hd7311073166%_
                                    _%contract7311273159%_))))
                         (let ((_%contract7311373172%_
                                (reverse _%contract7311273159%_)))
                           (if (gx#stx-null? _%tl7310473143%_)
                               ((lambda (_%L73176%_ _%L73178%_)
                                  (cons (cons _%L73178%_
                                              (foldr (lambda (_%g7320073203%_
                                                              _%g7320173206%_)
                                                       (cons _%g7320073203%_
                                                             _%g7320173206%_))
                                                     '()
                                                     _%L73176%_))
                                        _%r73086%_))
                                _%contract7311373172%_
                                _%hd7310073130%_)
                               (_%g7309573119%_ _%g7309673123%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop7310873152%_
                                                    _%target7310573146%_
                                                    '()))
                                                 (_%g7309573119%_
                                                  _%g7309673123%_)))))
                                       (_%g7309573119%_ _%g7309673123%_))))
                               (_%g7309573119%_ _%g7309673123%_))))
                       (_%g7309573119%_ _%g7309673123%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g7309473209%_
                                                    (list _%slot73084%_
                                                          _%contract73092%_))))
                                               _%$e73088%_)
                                              (cons _%slot73084%_
                                                    _%r73086%_))))
                                      '()
                                      (foldr (lambda (_%g7321473217%_
                                                      _%g7321573220%_)
                                               (cons _%g7321473217%_
                                                     _%g7321573220%_))
                                             '()
                                             _%L70804%_))
                               (gx#core-quote-syntax _%L70582%_))))
                      (let* ((_%g7322573240%_
                              (lambda (_%g7322673236%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g7322673236%_)))
                             (_%g7322473293%_
                              (lambda (_%g7322673244%_)
                                (if (gx#stx-pair? _%g7322673244%_)
                                    (let ((_%e7322973247%_
                                           (gx#syntax-e _%g7322673244%_)))
                                      (let ((_%hd7323073251%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e7322973247%_)))
                                            (_%tl7323173254%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e7322973247%_))))
                                        (if (gx#stx-pair? _%tl7323173254%_)
                                            (let ((_%e7323273257%_
                                                   (gx#syntax-e
                                                    _%tl7323173254%_)))
                                              (let ((_%hd7323373261%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e7323273257%_)))
                                                    (_%tl7323473264%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e7323273257%_))))
                                                (if (gx#stx-null?
                                                     _%tl7323473264%_)
                                                    ((lambda (_%L73267%_
                                                              _%L73269%_)
                                                       (_%wrap70352%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'def/c)
                                                              (cons (cons _%L70610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%L73269%_)
                            (cons (gx#datum->syntax '#f '=>)
                                  (cons _%L70544%_
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-annotation)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@type)
                        (cons _%L73267%_ '()))
                  (cons (cons (gx#datum->syntax '#f '##structure)
                              (cons _%L73267%_
                                    (foldr (lambda (_%g7328473287%_
                                                    _%g7328573290%_)
                                             (cons _%g7328473287%_
                                                   _%g7328573290%_))
                                           '()
                                           _%L70804%_)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%hd7323373261%_
                                                     _%hd7323073251%_)
                                                    (_%g7322573240%_
                                                     _%g7322673244%_))))
                                            (_%g7322573240%_
                                             _%g7322673244%_))))
                                    (_%g7322573240%_ _%g7322673244%_)))))
                        (_%g7322473293%_
                         (list (foldr (lambda (_%slot73297%_ _%r73299%_)
                                        (let* ((_%default73301%_
                                                (hash-get
                                                 _%slot-default-table70503%_
                                                 (gx#stx-e _%slot73297%_)))
                                               (_%$e73304%_
                                                (hash-get
                                                 _%slot-contract-table70500%_
                                                 (gx#stx-e _%slot73297%_))))
                                          (if _%$e73304%_
                                              ((lambda (_%contract73308%_)
                                                 (let* ((_%g7331173348%_
                                                         (lambda (_%g7331273344%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g7331273344%_)))
                                                        (_%g7331073495%_
                                                         (lambda (_%g7331273352%_)
                                                           (if (gx#stx-pair?
                                                                _%g7331273352%_)
                                                               (let ((_%e7331673355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _%g7331273352%_)))
                         (let ((_%hd7331773359%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e7331673355%_)))
                               (_%tl7331873362%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e7331673355%_))))
                           (if (gx#stx-pair? _%tl7331873362%_)
                               (let ((_%e7331973365%_
                                      (gx#syntax-e _%tl7331873362%_)))
                                 (let ((_%hd7332073369%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e7331973365%_)))
                                       (_%tl7332173372%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e7331973365%_))))
                                   (if (gx#stx-pair/null? _%hd7332073369%_)
                                       (let ((_g85218_
                                              (gx#syntax-split-splice
                                               _%hd7332073369%_
                                               '0)))
                                         (begin
                                           (let ((_g85219_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g85218_)
                                                        (##values-length
                                                         _g85218_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g85219_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g85219_)))
                                           (let ((_%target7332273375%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g85218_ 0)))
                                                 (_%tl7332473378%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g85218_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl7332473378%_)
                                                 (letrec ((_%loop7332573381%_
                                                           (lambda (_%hd7332373385%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%contract7332973388%_)
                     (if (gx#stx-pair? _%hd7332373385%_)
                         (let ((_%e7332673391%_
                                (gx#syntax-e _%hd7332373385%_)))
                           (let ((_%lp-hd7332773395%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7332673391%_)))
                                 (_%lp-tl7332873398%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7332673391%_))))
                             (_%loop7332573381%_
                              _%lp-tl7332873398%_
                              (cons _%lp-hd7332773395%_
                                    _%contract7332973388%_))))
                         (let ((_%contract7333073401%_
                                (reverse _%contract7332973388%_)))
                           (if (gx#stx-pair? _%tl7332173372%_)
                               (let ((_%e7333173405%_
                                      (gx#syntax-e _%tl7332173372%_)))
                                 (let ((_%hd7333273409%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e7333173405%_)))
                                       (_%tl7333373412%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e7333173405%_))))
                                   (if (gx#stx-pair/null? _%hd7333273409%_)
                                       (let ((_g85220_
                                              (gx#syntax-split-splice
                                               _%hd7333273409%_
                                               '0)))
                                         (begin
                                           (let ((_g85221_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g85220_)
                                                        (##values-length
                                                         _g85220_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g85221_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g85221_)))
                                           (let ((_%target7333473415%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g85220_ 0)))
                                                 (_%tl7333673418%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g85220_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl7333673418%_)
                                                 (letrec ((_%loop7333773421%_
                                                           (lambda (_%hd7333573425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%default7334173428%_)
                     (if (gx#stx-pair? _%hd7333573425%_)
                         (let ((_%e7333873431%_
                                (gx#syntax-e _%hd7333573425%_)))
                           (let ((_%lp-hd7333973435%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e7333873431%_)))
                                 (_%lp-tl7334073438%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e7333873431%_))))
                             (_%loop7333773421%_
                              _%lp-tl7334073438%_
                              (cons _%lp-hd7333973435%_
                                    _%default7334173428%_))))
                         (let ((_%default7334273441%_
                                (reverse _%default7334173428%_)))
                           (if (gx#stx-null? _%tl7333373412%_)
                               ((lambda (_%L73445%_ _%L73447%_ _%L73448%_)
                                  (cons (symbol->keyword (gx#stx-e _%L73448%_))
                                        (cons (cons _%L73448%_
                                                    (foldr (lambda (_%g7347873483%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g7347973486%_)
                     (cons _%g7347873483%_ _%g7347973486%_))
                   (foldr (lambda (_%g7348073489%_ _%g7348173492%_)
                            (cons _%g7348073489%_ _%g7348173492%_))
                          '()
                          _%L73445%_)
                   _%L73447%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%r73299%_)))
                                _%default7334273441%_
                                _%contract7333073401%_
                                _%hd7331773359%_)
                               (_%g7331173348%_ _%g7331273352%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop7333773421%_
                                                    _%target7333473415%_
                                                    '()))
                                                 (_%g7331173348%_
                                                  _%g7331273352%_)))))
                                       (_%g7331173348%_ _%g7331273352%_))))
                               (_%g7331173348%_ _%g7331273352%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop7332573381%_
                                                    _%target7332273375%_
                                                    '()))
                                                 (_%g7331173348%_
                                                  _%g7331273352%_)))))
                                       (_%g7331173348%_ _%g7331273352%_))))
                               (_%g7331173348%_ _%g7331273352%_))))
                       (_%g7331173348%_ _%g7331273352%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g7331073495%_
                                                    (list _%slot73297%_
                                                          _%contract73308%_
                                                          (if _%default73301%_
                                                              (cons ':=
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%default73301%_ '()))
                      '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$e73304%_)
                                              (cons (symbol->keyword
                                                     (gx#stx-e _%slot73297%_))
                                                    (cons (cons _%slot73297%_
                                                                (cons _%default73301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  _%r73299%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()
                                      (foldr (lambda (_%g7350073503%_
                                                      _%g7350173506%_)
                                               (cons _%g7350073503%_
                                                     _%g7350173506%_))
                                             '()
                                             _%L70804%_))
                               (gx#core-quote-syntax _%L70582%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g7271572726%_))))
                                        (_%g7271373509%_
                                         (_%wrap70352%_
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'defsyntax)
                                                (cons _%L70544%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'make-class-type-info)
                          (cons 'id:
                                (cons _%L72188%_
                                      (cons 'name:
                                            (cons _%L72216%_
                                                  (cons 'slots:
                                                        (cons _%L72272%_
                                                              (cons 'ordered-slots:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L72300%_
                                  (cons 'super:
                                        (cons _%L72244%_
                                              (cons 'struct?:
                                                    (cons _%L72412%_
                                                          (cons 'final?:
                                                                (cons _%L72440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'metaclass:
                                    (cons _%L72468%_
                                          (cons 'constructor-method:
                                                (cons _%L72496%_
                                                      (cons 'type-descriptor:
                                                            (cons _%L72524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'constructor:
                                (cons _%L72552%_
                                      (cons 'predicate:
                                            (cons _%L72580%_
                                                  (cons 'accessors:
                                                        (cons _%L72608%_
                                                              (cons 'mutators:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L72664%_
                                  (cons 'unchecked-accessors:
                                        (cons _%L72636%_
                                              (cons 'unchecked-mutators:
                                                    (cons _%L72700%_
                                                          (cons 'slot-types:
                                                                (cons _%L72328%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slot-contracts:
                                    (cons _%L72356%_
                                          (cons 'slot-defaults:
                                                (cons _%L72384%_
                                                      '())))))))))))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%g7268672697%_))))
                           (_%g7268473513%_
                            (let* ((_%g7351773550%_
                                    (lambda (_%g7351873546%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g7351873546%_)))
                                   (_%g7351673679%_
                                    (lambda (_%g7351873554%_)
                                      (if (gx#stx-pair? _%g7351873554%_)
                                          (let ((_%e7352173557%_
                                                 (gx#syntax-e
                                                  _%g7351873554%_)))
                                            (let ((_%hd7352273561%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7352173557%_)))
                                                  (_%tl7352373564%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7352173557%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd7352273561%_)
                                                  (let ((_g85222_
                                                         (gx#syntax-split-splice
                                                          _%hd7352273561%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g85223_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g85222_)
                           (##values-length _g85222_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g85223_ 2)))
                    (error "Context expects 2 values" _g85223_)))
              (let ((_%target7352473567%_
                     (let () (declare (not safe)) (##values-ref _g85222_ 0)))
                    (_%tl7352673570%_
                     (let () (declare (not safe)) (##values-ref _g85222_ 1))))
                (if (gx#stx-null? _%tl7352673570%_)
                    (letrec ((_%loop7352773573%_
                              (lambda (_%hd7352573577%_
                                       _%slot-usetf7353173580%_)
                                (if (gx#stx-pair? _%hd7352573577%_)
                                    (let ((_%e7352873583%_
                                           (gx#syntax-e _%hd7352573577%_)))
                                      (let ((_%lp-hd7352973587%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e7352873583%_)))
                                            (_%lp-tl7353073590%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e7352873583%_))))
                                        (_%loop7352773573%_
                                         _%lp-tl7353073590%_
                                         (cons _%lp-hd7352973587%_
                                               _%slot-usetf7353173580%_))))
                                    (let ((_%slot-usetf7353273593%_
                                           (reverse _%slot-usetf7353173580%_)))
                                      (if (gx#stx-pair? _%tl7352373564%_)
                                          (let ((_%e7353373597%_
                                                 (gx#syntax-e
                                                  _%tl7352373564%_)))
                                            (let ((_%hd7353473601%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7353373597%_)))
                                                  (_%tl7353573604%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7353373597%_))))
                                              (if (gx#stx-pair/null?
                                                   _%hd7353473601%_)
                                                  (let ((_g85224_
                                                         (gx#syntax-split-splice
                                                          _%hd7353473601%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g85225_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g85224_)
                           (##values-length _g85224_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g85225_ 2)))
                    (error "Context expects 2 values" _g85225_)))
              (let ((_%target7353673607%_
                     (let () (declare (not safe)) (##values-ref _g85224_ 0)))
                    (_%tl7353873610%_
                     (let () (declare (not safe)) (##values-ref _g85224_ 1))))
                (if (gx#stx-null? _%tl7353873610%_)
                    (letrec ((_%loop7353973613%_
                              (lambda (_%hd7353773617%_
                                       _%mixin-slot-usetf7354373620%_)
                                (if (gx#stx-pair? _%hd7353773617%_)
                                    (let ((_%e7354073623%_
                                           (gx#syntax-e _%hd7353773617%_)))
                                      (let ((_%lp-hd7354173627%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e7354073623%_)))
                                            (_%lp-tl7354273630%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e7354073623%_))))
                                        (_%loop7353973613%_
                                         _%lp-tl7354273630%_
                                         (cons _%lp-hd7354173627%_
                                               _%mixin-slot-usetf7354373620%_))))
                                    (let ((_%mixin-slot-usetf7354473633%_
                                           (reverse _%mixin-slot-usetf7354373620%_)))
                                      (if (gx#stx-null? _%tl7353573604%_)
                                          ((lambda (_%L73637%_ _%L73639%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (foldr (lambda (_%g7366273667%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g7366373670%_)
                    (cons _%g7366273667%_ _%g7366373670%_))
                  (foldr (lambda (_%g7366473673%_ _%g7366573676%_)
                           (cons _%g7366473673%_ _%g7366573676%_))
                         '()
                         _%L73637%_)
                  _%L73639%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-slot-usetf7354473633%_
                                           _%slot-usetf7353273593%_)
                                          (_%g7351773550%_
                                           _%g7351873554%_)))))))
                      (_%loop7353973613%_ _%target7353673607%_ '()))
                    (_%g7351773550%_ _%g7351873554%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g7351773550%_
                                                   _%g7351873554%_))))
                                          (_%g7351773550%_
                                           _%g7351873554%_)))))))
                      (_%loop7352773573%_ _%target7352473567%_ '()))
                    (_%g7351773550%_ _%g7351873554%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g7351773550%_
                                                   _%g7351873554%_))))
                                          (_%g7351773550%_ _%g7351873554%_)))))
                              (_%g7351673679%_
                               (list (map _%map-slot-usetf72682%_
                                          (foldr (lambda (_%g7368273685%_
                                                          _%g7368373688%_)
                                                   (cons _%g7368273685%_
                                                         _%g7368373688%_))
                                                 '()
                                                 _%L70733%_)
                                          (foldr (lambda (_%g7369073693%_
                                                          _%g7369173696%_)
                                                   (cons _%g7369073693%_
                                                         _%g7369173696%_))
                                                 '()
                                                 _%L71443%_)
                                          (foldr (lambda (_%g7369873701%_
                                                          _%g7369973704%_)
                                                   (cons _%g7369873701%_
                                                         _%g7369973704%_))
                                                 '()
                                                 _%L71017%_))
                                     (map _%map-slot-usetf72682%_
                                          (foldr (lambda (_%g7370673709%_
                                                          _%g7370773712%_)
                                                   (cons _%g7370673709%_
                                                         _%g7370773712%_))
                                                 '()
                                                 _%L71088%_)
                                          (foldr (lambda (_%g7371473717%_
                                                          _%g7371573720%_)
                                                   (cons _%g7371473717%_
                                                         _%g7371573720%_))
                                                 '()
                                                 _%L71585%_)
                                          (foldr (lambda (_%g7372273725%_
                                                          _%g7372373728%_)
                                                   (cons _%g7372273725%_
                                                         _%g7372373728%_))
                                                 '()
                                                 _%L71301%_))))))))
                       _%g7265072661%_))))
              (_%g7264873731%_
               (cons (gx#datum->syntax '#f '@list)
                     (begin
                       (gx#syntax-check-splice-targets _%L70946%_ _%L70733%_)
                       (foldr (lambda (_%g7373473741%_
                                       _%g7373573744%_
                                       _%g7373673746%_)
                                (cons (cons (gx#datum->syntax '#f '@list)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%g7373573744%_
                                                              '()))
                                                  (cons '::
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'quote-syntax)
                            (cons _%g7373473741%_ '()))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _%g7373673746%_))
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%L71230%_
                                 _%L71088%_)
                                (foldr (lambda (_%g7373773749%_
                                                _%g7373873752%_
                                                _%g7373973754%_)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g7373873752%_ '()))
                   (cons '::
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _%g7373773749%_ '()))
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g7373973754%_))
                                       '()
                                       _%L71230%_
                                       _%L71088%_))
                              _%L70946%_
                              _%L70733%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g7262272633%_))))
                                         (_%g7262073757%_
                                          (cons (gx#datum->syntax '#f '@list)
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%L71372%_
                                                   _%L70733%_)
                                                  (foldr (lambda (_%g7376073767%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g7376173770%_
                          _%g7376273772%_)
                   (cons (cons (gx#datum->syntax '#f '@list)
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%g7376173770%_ '()))
                                     (cons '::
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote-syntax)
                                                       (cons _%g7376073767%_
                                                             '()))
                                                 '()))))
                         _%g7376273772%_))
                 (begin
                   (gx#syntax-check-splice-targets _%L71514%_ _%L71088%_)
                   (foldr (lambda (_%g7376373775%_
                                   _%g7376473778%_
                                   _%g7376573780%_)
                            (cons (cons (gx#datum->syntax '#f '@list)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%g7376473778%_ '()))
                                              (cons '::
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'quote-syntax)
                        (cons _%g7376373775%_ '()))
                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _%g7376573780%_))
                          '()
                          _%L71514%_
                          _%L71088%_))
                 _%L71372%_
                 _%L70733%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%g7259472605%_))))
                            (_%g7259273783%_
                             (cons (gx#datum->syntax '#f '@list)
                                   (begin
                                     (gx#syntax-check-splice-targets
                                      _%L70875%_
                                      _%L70733%_)
                                     (foldr (lambda (_%g7378673793%_
                                                     _%g7378773796%_
                                                     _%g7378873798%_)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           '@list)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _%g7378773796%_ '()))
                        (cons '::
                              (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%g7378673793%_ '()))
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g7378873798%_))
                                            (begin
                                              (gx#syntax-check-splice-targets
                                               _%L71159%_
                                               _%L71088%_)
                                              (foldr (lambda (_%g7378973801%_
                                                              _%g7379073804%_
                                                              _%g7379173806%_)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@list)
                           (cons (cons (gx#datum->syntax '#f 'quote)
                                       (cons _%g7379073804%_ '()))
                                 (cons '::
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote-syntax)
                                                   (cons _%g7378973801%_ '()))
                                             '()))))
                     _%g7379173806%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _%L71159%_
                                                     _%L71088%_))
                                            _%L70875%_
                                            _%L70733%_))))))
                        _%g7256672577%_))))
               (_%g7256473809%_
                (cons (gx#datum->syntax '#f 'quote-syntax)
                      (cons _%L70638%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%g7253872549%_))))
                                          (_%g7253673813%_
                                           (cons (gx#datum->syntax
                                                  '#f
                                                  'quote-syntax)
                                                 (cons _%L70610%_ '())))))
                                      _%g7251072521%_))))
                             (_%g7250873817%_
                              (cons (gx#datum->syntax '#f 'quote-syntax)
                                    (cons _%L70582%_ '())))))
                         _%g7248272493%_))))
                (_%g7248073821%_
                 (if (null? _%type-constructor71923%_)
                     '#f
                     (let* ((_%g7382573840%_
                             (lambda (_%g7382673836%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g7382673836%_)))
                            (_%g7382473888%_
                             (lambda (_%g7382673844%_)
                               (if (gx#stx-pair? _%g7382673844%_)
                                   (let ((_%e7382873847%_
                                          (gx#syntax-e _%g7382673844%_)))
                                     (let ((_%hd7382973851%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e7382873847%_)))
                                           (_%tl7383073854%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e7382873847%_))))
                                       (if (gx#stx-datum? _%hd7382973851%_)
                                           (let ((_%e7383173857%_
                                                  (gx#stx-e _%hd7382973851%_)))
                                             (if (equal? _%e7383173857%_
                                                         'constructor:)
                                                 (if (gx#stx-pair?
                                                      _%tl7383073854%_)
                                                     (let ((_%e7383273861%_
                                                            (gx#syntax-e
                                                             _%tl7383073854%_)))
                                                       (let ((_%hd7383373865%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e7383273861%_)))
                     (_%tl7383473868%_
                      (let () (declare (not safe)) (##cdr _%e7383273861%_))))
                 (if (gx#stx-null? _%tl7383473868%_)
                     ((lambda (_%L73871%_)
                        (cons (gx#datum->syntax '#f 'quote)
                              (cons _%L73871%_ '())))
                      _%hd7383373865%_)
                     (_%g7382573840%_ _%g7382673844%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7382573840%_
                                                      _%g7382673844%_))
                                                 (_%g7382573840%_
                                                  _%g7382673844%_)))
                                           (_%g7382573840%_ _%g7382673844%_))))
                                   (_%g7382573840%_ _%g7382673844%_)))))
                       (_%g7382473888%_ _%type-constructor71923%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g7245472465%_))))
                                           (_%g7245273892%_
                                            (if _%metaclass72027%_
                                                (let* ((_%g7389673904%_
                                                        (lambda (_%g7389773900%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g7389773900%_)))
                                                       (_%g7389573923%_
                                                        (lambda (_%g7389773908%_)
                                                          ((lambda (_%L73911%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'quote-syntax)
                           (cons _%L73911%_ '())))
                   _%g7389773908%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g7389573923%_
                                                   _%metaclass72027%_))
                                                '#f))))
                                       _%g7242672437%_))))
                              (_%g7242473927%_ _%final?72030%_)))
                          _%g7239872409%_))))
                 (_%g7239673931%_ _%struct?70526%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g7237072381%_))))
                                            (_%g7236873935%_
                                             (let* ((_%g7393973962%_
                                                     (lambda (_%g7394073958%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g7394073958%_)))
                                                    (_%g7393874042%_
                                                     (lambda (_%g7394073966%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g7394073966%_)
                                                           (let ((_g85226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g7394073966%_ '0)))
                     (begin
                       (let ((_g85227_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g85226_)
                                    (##values-length _g85226_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g85227_ 2)))
                             (error "Context expects 2 values" _g85227_)))
                       (let ((_%target7394373969%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g85226_ 0)))
                             (_%tl7394573972%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g85226_ 1))))
                         (if (gx#stx-null? _%tl7394573972%_)
                             (letrec ((_%loop7394673975%_
                                       (lambda (_%hd7394473979%_
                                                _%default7395073982%_
                                                _%slot7395173984%_)
                                         (if (gx#stx-pair? _%hd7394473979%_)
                                             (let ((_%e7394773987%_
                                                    (gx#syntax-e
                                                     _%hd7394473979%_)))
                                               (let ((_%lp-hd7394873991%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e7394773987%_)))
                                                     (_%lp-tl7394973994%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e7394773987%_))))
                                                 (if (gx#stx-pair?
                                                      _%lp-hd7394873991%_)
                                                     (let ((_%e7395473997%_
                                                            (gx#syntax-e
                                                             _%lp-hd7394873991%_)))
                                                       (let ((_%hd7395574001%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%e7395473997%_)))
                     (_%tl7395674004%_
                      (let () (declare (not safe)) (##cdr _%e7395473997%_))))
                 (_%loop7394673975%_
                  _%lp-tl7394973994%_
                  (cons _%tl7395674004%_ _%default7395073982%_)
                  (cons _%hd7395574001%_ _%slot7395173984%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7393973962%_
                                                      _%g7394073966%_))))
                                             (let ((_%default7395274007%_
                                                    (reverse _%default7395073982%_))
                                                   (_%slot7395374010%_
                                                    (reverse _%slot7395173984%_)))
                                               ((lambda (_%L74013%_ _%L74015%_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         '@list)
                                                        (begin
                                                          (gx#syntax-check-splice-targets
                                                           _%L74013%_
                                                           _%L74015%_)
                                                          (foldr (lambda (_%g7403074034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g7403174037%_
                                  _%g7403274039%_)
                           (cons (cons (gx#datum->syntax '#f '@list)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%g7403174037%_ '()))
                                             (cons '::
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g7403074034%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 _%g7403274039%_))
                         '()
                         _%L74013%_
                         _%L74015%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%default7395274007%_
                                                _%slot7395374010%_))))))
                               (_%loop7394673975%_
                                _%target7394373969%_
                                '()
                                '()))
                             (_%g7393973962%_ _%g7394073966%_)))))
                   (_%g7393973962%_ _%g7394073966%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7393874042%_
                                                (hash->list
                                                 _%slot-default-table70503%_))))))
                                        _%g7234272353%_))))
                               (_%g7234074046%_
                                (let* ((_%g7405074073%_
                                        (lambda (_%g7405174069%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g7405174069%_)))
                                       (_%g7404974153%_
                                        (lambda (_%g7405174077%_)
                                          (if (gx#stx-pair/null?
                                               _%g7405174077%_)
                                              (let ((_g85228_
                                                     (gx#syntax-split-splice
                                                      _%g7405174077%_
                                                      '0)))
                                                (begin
                                                  (let ((_g85229_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g85228_)
                                                               (##values-length
                                                                _g85228_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g85229_ 2)))
                (error "Context expects 2 values" _g85229_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target7405474080%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g85228_
                                                            0)))
                                                        (_%tl7405674083%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g85228_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl7405674083%_)
                                                        (letrec ((_%loop7405774086%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd7405574090%_
                                   _%contract7406174093%_
                                   _%slot7406274095%_)
                            (if (gx#stx-pair? _%hd7405574090%_)
                                (let ((_%e7405874098%_
                                       (gx#syntax-e _%hd7405574090%_)))
                                  (let ((_%lp-hd7405974102%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e7405874098%_)))
                                        (_%lp-tl7406074105%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e7405874098%_))))
                                    (if (gx#stx-pair? _%lp-hd7405974102%_)
                                        (let ((_%e7406574108%_
                                               (gx#syntax-e
                                                _%lp-hd7405974102%_)))
                                          (let ((_%hd7406674112%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e7406574108%_)))
                                                (_%tl7406774115%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e7406574108%_))))
                                            (_%loop7405774086%_
                                             _%lp-tl7406074105%_
                                             (cons _%tl7406774115%_
                                                   _%contract7406174093%_)
                                             (cons _%hd7406674112%_
                                                   _%slot7406274095%_))))
                                        (_%g7405074073%_ _%g7405174077%_))))
                                (let ((_%contract7406374118%_
                                       (reverse _%contract7406174093%_))
                                      (_%slot7406474121%_
                                       (reverse _%slot7406274095%_)))
                                  ((lambda (_%L74124%_ _%L74126%_)
                                     (cons (gx#datum->syntax '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _%L74124%_
                                              _%L74126%_)
                                             (foldr (lambda (_%g7414174145%_
                                                             _%g7414274148%_
                                                             _%g7414374150%_)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '@list)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%g7414274148%_ '()))
                                (cons '::
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g7414174145%_ '()))
                                            '()))))
                    _%g7414374150%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()
                                                    _%L74124%_
                                                    _%L74126%_))))
                                   _%contract7406374118%_
                                   _%slot7406474121%_))))))
                  (_%loop7405774086%_ _%target7405474080%_ '() '()))
                (_%g7405074073%_ _%g7405174077%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g7405074073%_
                                               _%g7405174077%_)))))
                                  (_%g7404974153%_
                                   (hash->list
                                    _%slot-contract-table70500%_))))))
                           _%g7231472325%_))))
                  (_%g7231274157%_
                   (let* ((_%g7416174184%_
                           (lambda (_%g7416274180%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g7416274180%_)))
                          (_%g7416074264%_
                           (lambda (_%g7416274188%_)
                             (if (gx#stx-pair/null? _%g7416274188%_)
                                 (let ((_g85230_
                                        (gx#syntax-split-splice
                                         _%g7416274188%_
                                         '0)))
                                   (begin
                                     (let ((_g85231_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g85230_)
                                                  (##values-length _g85230_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g85231_ 2)))
                                           (error "Context expects 2 values"
                                                  _g85231_)))
                                     (let ((_%target7416574191%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g85230_ 0)))
                                           (_%tl7416774194%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g85230_ 1))))
                                       (if (gx#stx-null? _%tl7416774194%_)
                                           (letrec ((_%loop7416874197%_
                                                     (lambda (_%hd7416674201%_
                                                              _%type7417274204%_
                                                              _%slot7417374206%_)
                                                       (if (gx#stx-pair?
                                                            _%hd7416674201%_)
                                                           (let ((_%e7416974209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%hd7416674201%_)))
                     (let ((_%lp-hd7417074213%_
                            (let ()
                              (declare (not safe))
                              (##car _%e7416974209%_)))
                           (_%lp-tl7417174216%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e7416974209%_))))
                       (if (gx#stx-pair? _%lp-hd7417074213%_)
                           (let ((_%e7417674219%_
                                  (gx#syntax-e _%lp-hd7417074213%_)))
                             (let ((_%hd7417774223%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%e7417674219%_)))
                                   (_%tl7417874226%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%e7417674219%_))))
                               (_%loop7416874197%_
                                _%lp-tl7417174216%_
                                (cons _%tl7417874226%_ _%type7417274204%_)
                                (cons _%hd7417774223%_ _%slot7417374206%_))))
                           (_%g7416174184%_ _%g7416274188%_))))
                   (let ((_%type7417474229%_ (reverse _%type7417274204%_))
                         (_%slot7417574232%_ (reverse _%slot7417374206%_)))
                     ((lambda (_%L74235%_ _%L74237%_)
                        (cons (gx#datum->syntax '#f '@list)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%L74235%_
                                 _%L74237%_)
                                (foldr (lambda (_%g7425274256%_
                                                _%g7425374259%_
                                                _%g7425474261%_)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '@list)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%g7425374259%_ '()))
                   (cons '::
                         (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                     (cons _%g7425274256%_ '()))
                               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g7425474261%_))
                                       '()
                                       _%L74235%_
                                       _%L74237%_))))
                      _%type7417474229%_
                      _%slot7417574232%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%loop7416874197%_
                                              _%target7416574191%_
                                              '()
                                              '()))
                                           (_%g7416174184%_
                                            _%g7416274188%_)))))
                                 (_%g7416174184%_ _%g7416274188%_)))))
                     (_%g7416074264%_
                      (filter (lambda (_%st74268%_) (cdr _%st74268%_))
                              (hash->list _%slot-type-table70498%_)))))))
              _%g7228672297%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g7228474271%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons (foldr (lambda (_%g7427474277%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%g7427574280%_)
                           (cons _%g7427474277%_ _%g7427574280%_))
                         '()
                         _%L70804%_)
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g7225872269%_))))
                                (_%g7225674283%_
                                 (cons (gx#datum->syntax '#f 'quote)
                                       (cons (foldr (lambda (_%g7428674289%_
                                                             _%g7428774292%_)
                                                      (cons _%g7428674289%_
                                                            _%g7428774292%_))
                                                    '()
                                                    _%L70733%_)
                                             '())))))
                            _%g7223072241%_))))
                   (_%g7222874295%_
                    (let* ((_%g7429974316%_
                            (lambda (_%g7430074312%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g7430074312%_)))
                           (_%g7429874377%_
                            (lambda (_%g7430074320%_)
                              (if (gx#stx-pair/null? _%g7430074320%_)
                                  (let ((_g85232_
                                         (gx#syntax-split-splice
                                          _%g7430074320%_
                                          '0)))
                                    (begin
                                      (let ((_g85233_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g85232_)
                                                   (##values-length _g85232_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g85233_ 2)))
                                            (error "Context expects 2 values"
                                                   _g85233_)))
                                      (let ((_%target7430274323%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g85232_ 0)))
                                            (_%tl7430474326%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g85232_ 1))))
                                        (if (gx#stx-null? _%tl7430474326%_)
                                            (letrec ((_%loop7430574329%_
                                                      (lambda (_%hd7430374333%_
                                                               _%super-id7430974336%_)
                                                        (if (gx#stx-pair?
                                                             _%hd7430374333%_)
                                                            (let ((_%e7430674339%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd7430374333%_)))
                      (let ((_%lp-hd7430774343%_
                             (let ()
                               (declare (not safe))
                               (##car _%e7430674339%_)))
                            (_%lp-tl7430874346%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e7430674339%_))))
                        (_%loop7430574329%_
                         _%lp-tl7430874346%_
                         (cons _%lp-hd7430774343%_ _%super-id7430974336%_))))
                    (let ((_%super-id7431074349%_
                           (reverse _%super-id7430974336%_)))
                      ((lambda (_%L74353%_)
                         (cons (gx#datum->syntax '#f '@list)
                               (foldr (lambda (_%g7436874371%_ _%g7436974374%_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote-syntax)
                                                    (cons _%g7436874371%_ '()))
                                              _%g7436974374%_))
                                      '()
                                      _%L74353%_)))
                       _%super-id7431074349%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop7430574329%_
                                               _%target7430274323%_
                                               '()))
                                            (_%g7429974316%_
                                             _%g7430074320%_)))))
                                  (_%g7429974316%_ _%g7430074320%_)))))
                      (_%g7429874377%_ _%super-ref70489%_)))))
               _%g7220272213%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g7220074381%_
                                               (let* ((_%g7438574393%_
                                                       (lambda (_%g7438674389%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g7438674389%_)))
                                                      (_%g7438474412%_
                                                       (lambda (_%g7438674397%_)
                                                         ((lambda (_%L74400%_)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%L74400%_ '())))
                  _%g7438674397%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g7438474412%_
                                                  (gx#stx-car
                                                   (gx#stx-cdr
                                                    _%type-name71901%_)))))))
                                          _%g7217472185%_))))
                                 (_%g7217274416%_
                                  (let* ((_%g7442074435%_
                                          (lambda (_%g7442174431%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g7442174431%_)))
                                         (_%g7441974483%_
                                          (lambda (_%g7442174439%_)
                                            (if (gx#stx-pair? _%g7442174439%_)
                                                (let ((_%e7442374442%_
                                                       (gx#syntax-e
                                                        _%g7442174439%_)))
                                                  (let ((_%hd7442474446%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e7442374442%_)))
                                                        (_%tl7442574449%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e7442374442%_))))
                                                    (if (gx#stx-datum?
                                                         _%hd7442474446%_)
                                                        (let ((_%e7442674452%_
                                                               (gx#stx-e
                                                                _%hd7442474446%_)))
                                                          (if (equal? _%e7442674452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              'id:)
                      (if (gx#stx-pair? _%tl7442574449%_)
                          (let ((_%e7442774456%_
                                 (gx#syntax-e _%tl7442574449%_)))
                            (let ((_%hd7442874460%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7442774456%_)))
                                  (_%tl7442974463%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7442774456%_))))
                              (if (gx#stx-null? _%tl7442974463%_)
                                  ((lambda (_%L74466%_)
                                     (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L74466%_ '())))
                                   _%hd7442874460%_)
                                  (_%g7442074435%_ _%g7442174439%_))))
                          (_%g7442074435%_ _%g7442174439%_))
                      (_%g7442074435%_ _%g7442174439%_)))
                (_%g7442074435%_ _%g7442174439%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g7442074435%_
                                                 _%g7442174439%_)))))
                                    (_%g7441974483%_ _%type-id71908%_)))))
                             _%g7214672157%_))))
                    (_%g7214474487%_
                     (_%wrap70352%_
                      (cons (gx#datum->syntax '#f 'defclass-type)
                            (cons _%L70582%_
                                  (cons _%L70666%_
                                        (cons _%L72132%_
                                              (cons _%L70638%_
                                                    (foldr (lambda (_%g7449074493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g7449174496%_)
                     (cons _%g7449074493%_ _%g7449174496%_))
                   '()
                   _%L72096%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                _%g7211872129%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7211674499%_
                                                (if (or (not (null? _%type-constructor71923%_))
                                                        (and (zero? (hash-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%slot-contract-table70500%_))
                     (zero? (hash-length _%slot-default-table70503%_)))
                _%metaclass72027%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%L70610%_
                                                    '#f))))
                                           _%type-body7205372092%_))))))
                          (_%loop7204872072%_ _%target7204572066%_ '()))
                        (_%g7204272059%_ _%g7204372063%_)))))
              (_%g7204272059%_ _%g7204372063%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g7204174511%_
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (foldr cons
                                      (foldr cons
                                             (foldr cons
                                                    (foldr cons
                                                           _%type-mixin-slots71894%_
                                                           _%type-slots71747%_)
                                                    _%type-properties72015%_)
                                             _%type-metaclass72039%_)
                                      _%type-final72036%_)
                               _%type-struct72033%_)
                        _%type-constructor71923%_)
                 _%type-name71901%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%type-id71908%_))))
                                      _%mixin-usetf7154271581%_))))))
                     (_%loop7153771561%_ _%target7153471555%_ '()))
                   (_%g7153171548%_ _%g7153271552%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g7153171548%_
                                                  _%g7153271552%_)))))
                                     (_%g7153074515%_
                                      (gx#stx-map
                                       (lambda (_%g7451874520%_)
                                         (_%make-id70493%_
                                          '"&"
                                          _%g7451874520%_))
                                       (foldr (lambda (_%g7452374526%_
                                                       _%g7452474529%_)
                                                (cons _%g7452374526%_
                                                      _%g7452474529%_))
                                              '()
                                              _%L71230%_)))))
                                 _%mixin-ugetf7147171510%_))))))
                (_%loop7146671490%_ _%target7146371484%_ '()))
              (_%g7146071477%_ _%g7146171481%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g7146071477%_
                                             _%g7146171481%_)))))
                                (_%g7145974532%_
                                 (gx#stx-map
                                  (lambda (_%g7453574537%_)
                                    (_%make-id70493%_ '"&" _%g7453574537%_))
                                  (foldr (lambda (_%g7454074543%_
                                                  _%g7454174546%_)
                                           (cons _%g7454074543%_
                                                 _%g7454174546%_))
                                         '()
                                         _%L71159%_)))))
                            _%usetf7140071439%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop7139571419%_
                                                    _%target7139271413%_
                                                    '()))
                                                 (_%g7138971406%_
                                                  _%g7139071410%_)))))
                                       (_%g7138971406%_ _%g7139071410%_)))))
                           (_%g7138874549%_
                            (gx#stx-map
                             (lambda (_%g7455274554%_)
                               (_%make-id70493%_ '"&" _%g7455274554%_))
                             (foldr (lambda (_%g7455774560%_ _%g7455874563%_)
                                      (cons _%g7455774560%_ _%g7455874563%_))
                                    '()
                                    _%L70946%_)))))
                       _%ugetf7132971368%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop7132471348%_
                                               _%target7132171342%_
                                               '()))
                                            (_%g7131871335%_
                                             _%g7131971339%_)))))
                                  (_%g7131871335%_ _%g7131971339%_)))))
                      (_%g7131774566%_
                       (gx#stx-map
                        (lambda (_%g7456974571%_)
                          (_%make-id70493%_ '"&" _%g7456974571%_))
                        (foldr (lambda (_%g7457474577%_ _%g7457574580%_)
                                 (cons _%g7457474577%_ _%g7457574580%_))
                               '()
                               _%L70875%_)))))
                  _%mixin-rawsetf7125871297%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop7125371277%_
                                          _%target7125071271%_
                                          '()))
                                       (_%g7124771264%_ _%g7124871268%_)))))
                             (_%g7124771264%_ _%g7124871268%_)))))
                 (_%g7124674583%_
                  (gx#stx-map
                   (lambda (_%g7458674588%_)
                     (_%make-id70493%_
                      _%name70520%_
                      '"-unchecked-"
                      _%g7458674588%_
                      '"-set!"))
                   _%mixin-slots70517%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-setf7118771226%_))))))
                                    (_%loop7118271206%_
                                     _%target7117971200%_
                                     '()))
                                  (_%g7117671193%_ _%g7117771197%_)))))
                        (_%g7117671193%_ _%g7117771197%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g7117574592%_
                                                     (gx#stx-map
                                                      (lambda (_%g7459574597%_)
                                                        (_%make-id70493%_
                                                         _%name70520%_
                                                         '"-"
                                                         _%g7459574597%_
                                                         '"-set!"))
                                                      _%mixin-slots70517%_))))
                                                _%mixin-getf7111671155%_))))))
                               (_%loop7111171135%_ _%target7110871129%_ '()))
                             (_%g7110571122%_ _%g7110671126%_)))))
                   (_%g7110571122%_ _%g7110671126%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g7110474601%_
                                                (gx#stx-map
                                                 (lambda (_%g7460474606%_)
                                                   (_%make-id70493%_
                                                    _%name70520%_
                                                    '"-"
                                                    _%g7460474606%_))
                                                 _%mixin-slots70517%_))))
                                           _%mixin-slot7104571084%_))))))
                          (_%loop7104071064%_ _%target7103771058%_ '()))
                        (_%g7103471051%_ _%g7103571055%_)))))
              (_%g7103471051%_ _%g7103571055%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g7103374610%_
                                           _%mixin-slots70517%_)))
                                      _%rawsetf7097471013%_))))))
                     (_%loop7096970993%_ _%target7096670987%_ '()))
                   (_%g7096370980%_ _%g7096470984%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g7096370980%_
                                                  _%g7096470984%_)))))
                                     (_%g7096274614%_
                                      (gx#stx-map
                                       (lambda (_%g7461774619%_)
                                         (_%make-id70493%_
                                          _%name70520%_
                                          '"-unchecked-"
                                          _%g7461774619%_
                                          '"-set!"))
                                       _%slots70511%_))))
                                 _%setf7090370942%_))))))
                (_%loop7089870922%_ _%target7089570916%_ '()))
              (_%g7089270909%_ _%g7089370913%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g7089270909%_
                                             _%g7089370913%_)))))
                                (_%g7089174623%_
                                 (gx#stx-map
                                  (lambda (_%g7462674628%_)
                                    (_%make-id70493%_
                                     _%name70520%_
                                     '"-"
                                     _%g7462674628%_
                                     '"-set!"))
                                  _%slots70511%_))))
                            _%getf7083270871%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop7082770851%_
                                                    _%target7082470845%_
                                                    '()))
                                                 (_%g7082170838%_
                                                  _%g7082270842%_)))))
                                       (_%g7082170838%_ _%g7082270842%_)))))
                           (_%g7082074632%_
                            (gx#stx-map
                             (lambda (_%g7463574637%_)
                               (_%make-id70493%_
                                _%name70520%_
                                '"-"
                                _%g7463574637%_))
                             _%slots70511%_))))
                       _%ordered-slot7076170800%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop7075670780%_
                                               _%target7075370774%_
                                               '()))
                                            (_%g7075070767%_
                                             _%g7075170771%_)))))
                                  (_%g7075070767%_ _%g7075170771%_)))))
                      (_%g7074974641%_ _%ordered-slots70506%_)))
                  _%slot7069070729%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop7068570709%_
                                          _%target7068270703%_
                                          '()))
                                       (_%g7067970696%_ _%g7068070700%_)))))
                             (_%g7067970696%_ _%g7068070700%_)))))
                 (_%g7067874645%_ _%slots70511%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%g7065270663%_))))
                                            (_%g7065074649%_
                                             (map gerbil/core/mop~MOP-2#!class-type-descriptor
                                                  _%super70523%_))))
                                        _%g7062470635%_))))
                               (_%g7062274653%_
                                (_%make-id70493%_ _%name70520%_ '"?"))))
                           _%g7059670607%_))))
                  (_%g7059474657%_ (_%make-id70493%_ '"make-" _%name70520%_))))
              _%g7056870579%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%g7056674661%_
                                              (_%make-id70493%_
                                               _%name70520%_
                                               '"::t"))))
                                         _%g7053070541%_))))
                                (_%g7052874665%_ _%id70487%_))))))))))
          (let* ((_%g7035570383%_
                  (lambda (_%g7035670379%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g7035670379%_)))
                 (_%g7035470483%_
                  (lambda (_%g7035670387%_)
                    (if (gx#stx-pair? _%g7035670387%_)
                        (let ((_%e7036070390%_ (gx#syntax-e _%g7035670387%_)))
                          (let ((_%hd7036170394%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e7036070390%_)))
                                (_%tl7036270397%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e7036070390%_))))
                            (if (gx#stx-pair? _%tl7036270397%_)
                                (let ((_%e7036370400%_
                                       (gx#syntax-e _%tl7036270397%_)))
                                  (let ((_%hd7036470404%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e7036370400%_)))
                                        (_%tl7036570407%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e7036370400%_))))
                                    (if (gx#stx-pair? _%tl7036570407%_)
                                        (let ((_%e7036670410%_
                                               (gx#syntax-e _%tl7036570407%_)))
                                          (let ((_%hd7036770414%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e7036670410%_)))
                                                (_%tl7036870417%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e7036670410%_))))
                                            (if (gx#stx-pair/null?
                                                 _%hd7036770414%_)
                                                (let ((_g85234_
                                                       (gx#syntax-split-splice
                                                        _%hd7036770414%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g85235_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g85234_)
                         (##values-length _g85234_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g85235_ 2)))
                  (error "Context expects 2 values" _g85235_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target7036970420%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g85234_
                                                              0)))
                                                          (_%tl7037170423%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g85234_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl7037170423%_)
                                                          (letrec ((_%loop7037270426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd7037070430%_ _%slot7037670433%_)
                              (if (gx#stx-pair? _%hd7037070430%_)
                                  (let ((_%e7037370436%_
                                         (gx#syntax-e _%hd7037070430%_)))
                                    (let ((_%lp-hd7037470440%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e7037370436%_)))
                                          (_%lp-tl7037570443%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e7037370436%_))))
                                      (_%loop7037270426%_
                                       _%lp-tl7037570443%_
                                       (cons _%lp-hd7037470440%_
                                             _%slot7037670433%_))))
                                  (let ((_%slot7037770446%_
                                         (reverse _%slot7037670433%_)))
                                    ((lambda (_%L70450%_ _%L70452%_ _%L70453%_)
                                       (_%generate70332%_
                                        _%L70453%_
                                        (foldr (lambda (_%g7047470477%_
                                                        _%g7047570480%_)
                                                 (cons _%g7047470477%_
                                                       _%g7047570480%_))
                                               '()
                                               _%L70452%_)
                                        _%L70450%_))
                                     _%tl7036870417%_
                                     _%slot7037770446%_
                                     _%hd7036470404%_))))))
                    (_%loop7037270426%_ _%target7036970420%_ '()))
                  (_%g7035570383%_ _%g7035670387%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g7035570383%_
                                                 _%g7035670387%_))))
                                        (_%g7035570383%_ _%g7035670387%_))))
                                (_%g7035570383%_ _%g7035670387%_))))
                        (_%g7035570383%_ _%g7035670387%_)))))
            (_%g7035470483%_ _%stx70329%_)))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defstruct/c|
      (lambda (_%$stx77675%_)
        (let* ((_%g7767977698%_
                (lambda (_%g7768077694%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g7768077694%_)))
               (_%g7767877755%_
                (lambda (_%g7768077702%_)
                  (if (gx#stx-pair? _%g7768077702%_)
                      (let ((_%e7768477705%_ (gx#syntax-e _%g7768077702%_)))
                        (let ((_%hd7768577709%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7768477705%_)))
                              (_%tl7768677712%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7768477705%_))))
                          (if (gx#stx-pair? _%tl7768677712%_)
                              (let ((_%e7768777715%_
                                     (gx#syntax-e _%tl7768677712%_)))
                                (let ((_%hd7768877719%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7768777715%_)))
                                      (_%tl7768977722%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7768777715%_))))
                                  (if (gx#stx-pair? _%tl7768977722%_)
                                      (let ((_%e7769077725%_
                                             (gx#syntax-e _%tl7768977722%_)))
                                        (let ((_%hd7769177729%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7769077725%_)))
                                              (_%tl7769277732%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7769077725%_))))
                                          ((lambda (_%L77735%_
                                                    _%L77737%_
                                                    _%L77738%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass/c)
                                                   (cons _%L77738%_
                                                         (cons _%L77737%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%L77735%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl7769277732%_
                                           _%hd7769177729%_
                                           _%hd7768877719%_)))
                                      (_%g7767977698%_ _%g7768077702%_))))
                              (_%g7767977698%_ _%g7768077702%_))))
                      (_%g7767977698%_ _%g7768077702%_)))))
          (_%g7767877755%_ _%$stx77675%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#do/c|
      (lambda (_%stx77759%_)
        (let* ((_%g7776277833%_
                (lambda (_%g7776377829%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g7776377829%_)))
               (_%g7776178199%_
                (lambda (_%g7776377837%_)
                  (if (gx#stx-pair? _%g7776377837%_)
                      (let ((_%e7777077840%_ (gx#syntax-e _%g7776377837%_)))
                        (let ((_%hd7777177844%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7777077840%_)))
                              (_%tl7777277847%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7777077840%_))))
                          (if (gx#stx-pair? _%tl7777277847%_)
                              (let ((_%e7777377850%_
                                     (gx#syntax-e _%tl7777277847%_)))
                                (let ((_%hd7777477854%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7777377850%_)))
                                      (_%tl7777577857%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7777377850%_))))
                                  (if (gx#stx-pair/null? _%hd7777477854%_)
                                      (let ((_g85236_
                                             (gx#syntax-split-splice
                                              _%hd7777477854%_
                                              '0)))
                                        (begin
                                          (let ((_g85237_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g85236_)
                                                       (##values-length
                                                        _g85236_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g85237_ 2)))
                                                (error "Context expects 2 values"
                                                       _g85237_)))
                                          (let ((_%target7777677860%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g85236_ 0)))
                                                (_%tl7777877863%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g85236_ 1))))
                                            (if (gx#stx-null? _%tl7777877863%_)
                                                (letrec ((_%loop7777977866%_
                                                          (lambda (_%hd7777777870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%step7778377873%_
                           _%init7778477875%_
                           _%var/c7778577877%_)
                    (if (gx#stx-pair? _%hd7777777870%_)
                        (let ((_%e7778077880%_ (gx#syntax-e _%hd7777777870%_)))
                          (let ((_%lp-hd7778177884%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e7778077880%_)))
                                (_%lp-tl7778277887%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e7778077880%_))))
                            (if (gx#stx-pair? _%lp-hd7778177884%_)
                                (let ((_%e7778977890%_
                                       (gx#syntax-e _%lp-hd7778177884%_)))
                                  (let ((_%hd7779077894%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e7778977890%_)))
                                        (_%tl7779177897%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e7778977890%_))))
                                    (if (gx#stx-pair? _%tl7779177897%_)
                                        (let ((_%e7779277900%_
                                               (gx#syntax-e _%tl7779177897%_)))
                                          (let ((_%hd7779377904%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e7779277900%_)))
                                                (_%tl7779477907%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e7779277900%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl7779477907%_)
                                                (let ((_g85238_
                                                       (gx#syntax-split-splice
                                                        _%tl7779477907%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g85239_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g85238_)
                         (##values-length _g85238_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g85239_ 2)))
                  (error "Context expects 2 values" _g85239_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%target7779577910%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g85238_
                                                              0)))
                                                          (_%tl7779777913%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g85238_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%tl7779777913%_)
                                                          (letrec ((_%loop7779877916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%hd7779677920%_ _%step7780277923%_)
                              (if (gx#stx-pair? _%hd7779677920%_)
                                  (let ((_%e7779977926%_
                                         (gx#syntax-e _%hd7779677920%_)))
                                    (let ((_%lp-hd7780077930%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e7779977926%_)))
                                          (_%lp-tl7780177933%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e7779977926%_))))
                                      (_%loop7779877916%_
                                       _%lp-tl7780177933%_
                                       (cons _%lp-hd7780077930%_
                                             _%step7780277923%_))))
                                  (let ((_%step7780377936%_
                                         (reverse _%step7780277923%_)))
                                    (_%loop7777977866%_
                                     _%lp-tl7778277887%_
                                     (cons _%step7780377936%_
                                           _%step7778377873%_)
                                     (cons _%hd7779377904%_ _%init7778477875%_)
                                     (cons _%hd7779077894%_
                                           _%var/c7778577877%_)))))))
                    (_%loop7779877916%_ _%target7779577910%_ '()))
                  (_%g7776277833%_ _%g7776377837%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g7776277833%_
                                                 _%g7776377837%_))))
                                        (_%g7776277833%_ _%g7776377837%_))))
                                (_%g7776277833%_ _%g7776377837%_))))
                        (let ((_%step7778677940%_ (reverse _%step7778377873%_))
                              (_%init7778777943%_ (reverse _%init7778477875%_))
                              (_%var/c7778877945%_
                               (reverse _%var/c7778577877%_)))
                          (if (gx#stx-pair? _%tl7777577857%_)
                              (let ((_%e7780477948%_
                                     (gx#syntax-e _%tl7777577857%_)))
                                (let ((_%hd7780577952%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7780477948%_)))
                                      (_%tl7780677955%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7780477948%_))))
                                  (if (gx#stx-pair? _%hd7780577952%_)
                                      (let ((_%e7780777958%_
                                             (gx#syntax-e _%hd7780577952%_)))
                                        (let ((_%hd7780877962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7780777958%_)))
                                              (_%tl7780977965%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7780777958%_))))
                                          (if (gx#stx-pair/null?
                                               _%tl7780977965%_)
                                              (let ((_g85240_
                                                     (gx#syntax-split-splice
                                                      _%tl7780977965%_
                                                      '0)))
                                                (begin
                                                  (let ((_g85241_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g85240_)
                                                               (##values-length
                                                                _g85240_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g85241_ 2)))
                (error "Context expects 2 values" _g85241_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%target7781077968%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g85240_
                                                            0)))
                                                        (_%tl7781277971%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g85240_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%tl7781277971%_)
                                                        (letrec ((_%loop7781377974%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%hd7781177978%_ _%fini7781777981%_)
                            (if (gx#stx-pair? _%hd7781177978%_)
                                (let ((_%e7781477984%_
                                       (gx#syntax-e _%hd7781177978%_)))
                                  (let ((_%lp-hd7781577988%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e7781477984%_)))
                                        (_%lp-tl7781677991%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e7781477984%_))))
                                    (_%loop7781377974%_
                                     _%lp-tl7781677991%_
                                     (cons _%lp-hd7781577988%_
                                           _%fini7781777981%_))))
                                (let ((_%fini7781877994%_
                                       (reverse _%fini7781777981%_)))
                                  (if (gx#stx-pair/null? _%tl7780677955%_)
                                      (let ((_g85242_
                                             (gx#syntax-split-splice
                                              _%tl7780677955%_
                                              '0)))
                                        (begin
                                          (let ((_g85243_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g85242_)
                                                       (##values-length
                                                        _g85242_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g85243_ 2)))
                                                (error "Context expects 2 values"
                                                       _g85243_)))
                                          (let ((_%target7781977998%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g85242_ 0)))
                                                (_%tl7782178001%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g85242_ 1))))
                                            (if (gx#stx-null? _%tl7782178001%_)
                                                (letrec ((_%loop7782278004%_
                                                          (lambda (_%hd7782078008%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%body7782678011%_)
                    (if (gx#stx-pair? _%hd7782078008%_)
                        (let ((_%e7782378014%_ (gx#syntax-e _%hd7782078008%_)))
                          (let ((_%lp-hd7782478018%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e7782378014%_)))
                                (_%lp-tl7782578021%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e7782378014%_))))
                            (_%loop7782278004%_
                             _%lp-tl7782578021%_
                             (cons _%lp-hd7782478018%_ _%body7782678011%_))))
                        (let ((_%body7782778024%_
                               (reverse _%body7782678011%_)))
                          ((lambda (_%L78028%_
                                    _%L78030%_
                                    _%L78031%_
                                    _%L78032%_
                                    _%L78033%_
                                    _%L78034%_)
                             (let* ((_%g7806878085%_
                                     (lambda (_%g7806978081%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%g7806978081%_)))
                                    (_%g7806778184%_
                                     (lambda (_%g7806978089%_)
                                       (if (gx#stx-pair/null? _%g7806978089%_)
                                           (let ((_g85244_
                                                  (gx#syntax-split-splice
                                                   _%g7806978089%_
                                                   '0)))
                                             (begin
                                               (let ((_g85245_
                                                      (let ()
                                                        (declare (not safe))
                                                        (if (##values?
                                                             _g85244_)
                                                            (##values-length
                                                             _g85244_)
                                                            1))))
                                                 (if (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fx= _g85245_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (error "Context expects 2 values"
                                                            _g85245_)))
                                               (let ((_%target7807178092%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g85244_
                                                         0)))
                                                     (_%tl7807378095%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##values-ref
                                                         _g85244_
                                                         1))))
                                                 (if (gx#stx-null?
                                                      _%tl7807378095%_)
                                                     (letrec ((_%loop7807478098%_
                                                               (lambda (_%hd7807278102%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%var7807878105%_)
                         (if (gx#stx-pair? _%hd7807278102%_)
                             (let ((_%e7807578108%_
                                    (gx#syntax-e _%hd7807278102%_)))
                               (let ((_%lp-hd7807678112%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%e7807578108%_)))
                                     (_%lp-tl7807778115%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%e7807578108%_))))
                                 (_%loop7807478098%_
                                  _%lp-tl7807778115%_
                                  (cons _%lp-hd7807678112%_
                                        _%var7807878105%_))))
                             (let ((_%var7807978118%_
                                    (reverse _%var7807878105%_)))
                               ((lambda (_%L78122%_)
                                  (cons (gx#datum->syntax '#f 'let/c)
                                        (cons (gx#datum->syntax '#f '$loop)
                                              (cons (begin
                                                      (gx#syntax-check-splice-targets
                                                       _%L78033%_
                                                       _%L78034%_)
                                                      (foldr (lambda (_%g7813778150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g7813878153%_
                              _%g7813978155%_)
                       (cons (cons _%g7813878153%_ (cons _%g7813778150%_ '()))
                             _%g7813978155%_))
                     '()
                     _%L78033%_
                     _%L78034%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'if)
                        (cons _%L78031%_
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'do-loop-result)
                                          (foldr (lambda (_%g7814078158%_
                                                          _%g7814178161%_)
                                                   (cons _%g7814078158%_
                                                         _%g7814178161%_))
                                                 '()
                                                 _%L78030%_))
                                    (cons (cons (gx#datum->syntax '#f 'let)
                                                (cons '()
                                                      (foldr (lambda (_%g7814278164%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g7814378167%_)
                       (cons _%g7814278164%_ _%g7814378167%_))
                     (cons (cons (gx#datum->syntax '#f '$loop)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _%L78032%_
                                    _%L78122%_)
                                   (foldr (lambda (_%g7814478170%_
                                                   _%g7814578173%_
                                                   _%g7814678175%_)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'do-loop-step)
                                                        (cons _%g7814578173%_
                                                              (foldr (lambda (_%g7814778178%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%g7814878181%_)
                               (cons _%g7814778178%_ _%g7814878181%_))
                             '()
                             _%g7814478170%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g7814678175%_))
                                          '()
                                          _%L78032%_
                                          _%L78122%_)))
                           '())
                     _%L78028%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))
                  '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%var7807978118%_))))))
               (_%loop7807478098%_ _%target7807178092%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g7806878085%_
                                                      _%g7806978089%_)))))
                                           (_%g7806878085%_
                                            _%g7806978089%_)))))
                               (_%g7806778184%_
                                (map (lambda (_%b78188%_)
                                       (if (gx#identifier? _%b78188%_)
                                           _%b78188%_
                                           (gx#stx-car _%b78188%_)))
                                     (foldr (lambda (_%g7819078193%_
                                                     _%g7819178196%_)
                                              (cons _%g7819078193%_
                                                    _%g7819178196%_))
                                            '()
                                            _%L78034%_)))))
                           _%body7782778024%_
                           _%fini7781877994%_
                           _%hd7780877962%_
                           _%step7778677940%_
                           _%init7778777943%_
                           _%var/c7778877945%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop7782278004%_
                                                   _%target7781977998%_
                                                   '()))
                                                (_%g7776277833%_
                                                 _%g7776377837%_)))))
                                      (_%g7776277833%_ _%g7776377837%_)))))))
                  (_%loop7781377974%_ _%target7781077968%_ '()))
                (_%g7776277833%_ _%g7776377837%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g7776277833%_
                                               _%g7776377837%_))))
                                      (_%g7776277833%_ _%g7776377837%_))))
                              (_%g7776277833%_ _%g7776377837%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop7777977866%_
                                                   _%target7777677860%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%g7776277833%_
                                                 _%g7776377837%_)))))
                                      (_%g7776277833%_ _%g7776377837%_))))
                              (_%g7776277833%_ _%g7776377837%_))))
                      (_%g7776277833%_ _%g7776377837%_)))))
          (_%g7776178199%_ _%stx77759%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#do-loop-result|
      (lambda (_%$stx78208%_)
        (let* ((_%__stx8456984570%_ _%$stx78208%_)
               (_%g7821478248%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8456984570%_))))
          (let ((_%__kont8457284573%_ (lambda () '#!void))
                (_%__kont8457484575%_ (lambda (_%L78360%_) _%L78360%_))
                (_%__kont8457684577%_
                 (lambda (_%L78305%_ _%L78307%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (cons _%L78307%_
                               (foldr (lambda (_%g7832478327%_ _%g7832578330%_)
                                        (cons _%g7832478327%_ _%g7832578330%_))
                                      '()
                                      _%L78305%_))))))
            (let ((_%__match8462284623%_
                   (lambda (_%e7822878255%_
                            _%hd7822978259%_
                            _%tl7823078262%_
                            _%e7823178265%_
                            _%hd7823278269%_
                            _%tl7823378272%_
                            _%__splice8457884579%_
                            _%target7823478275%_
                            _%tl7823678278%_)
                     (letrec ((_%loop7823778281%_
                               (lambda (_%hd7823578285%_ _%rest7824178288%_)
                                 (if (gx#stx-pair? _%hd7823578285%_)
                                     (let ((_%e7823878291%_
                                            (gx#syntax-e _%hd7823578285%_)))
                                       (let ((_%lp-tl7824078298%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e7823878291%_)))
                                             (_%lp-hd7823978295%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e7823878291%_))))
                                         (_%loop7823778281%_
                                          _%lp-tl7824078298%_
                                          (cons _%lp-hd7823978295%_
                                                _%rest7824178288%_))))
                                     (let ((_%rest7824278301%_
                                            (reverse _%rest7824178288%_)))
                                       (_%__kont8457684577%_
                                        _%rest7824278301%_
                                        _%hd7823278269%_))))))
                       (_%loop7823778281%_ _%target7823478275%_ '())))))
              (if (gx#stx-pair? _%__stx8456984570%_)
                  (let ((_%e7821678380%_ (gx#syntax-e _%__stx8456984570%_)))
                    (let ((_%tl7821878387%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7821678380%_)))
                          (_%hd7821778384%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7821678380%_))))
                      (if (gx#stx-null? _%tl7821878387%_)
                          (_%__kont8457284573%_)
                          (if (gx#stx-pair? _%tl7821878387%_)
                              (let ((_%e7822378350%_
                                     (gx#syntax-e _%tl7821878387%_)))
                                (let ((_%tl7822578357%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7822378350%_)))
                                      (_%hd7822478354%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7822378350%_))))
                                  (if (gx#stx-null? _%tl7822578357%_)
                                      (_%__kont8457484575%_ _%hd7822478354%_)
                                      (if (gx#stx-pair/null? _%tl7822578357%_)
                                          (let ((_%__splice8457884579%_
                                                 (gx#syntax-split-splice->vector
                                                  _%tl7822578357%_
                                                  '0)))
                                            (let ((_%tl7823678278%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8457884579%_
                                                      '1)))
                                                  (_%target7823478275%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice8457884579%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%tl7823678278%_)
                                                  (_%__match8462284623%_
                                                   _%e7821678380%_
                                                   _%hd7821778384%_
                                                   _%tl7821878387%_
                                                   _%e7822378350%_
                                                   _%hd7822478354%_
                                                   _%tl7822578357%_
                                                   _%__splice8457884579%_
                                                   _%target7823478275%_
                                                   _%tl7823678278%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g7821478248%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g7821478248%_))))))
                              (let ()
                                (declare (not safe))
                                (_%g7821478248%_))))))
                  (let () (declare (not safe)) (_%g7821478248%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#do-loop-step|
      (lambda (_%$stx78399%_)
        (let* ((_%__stx8462584626%_ _%$stx78399%_)
               (_%g7840578451%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8462584626%_))))
          (let ((_%__kont8462884629%_ (lambda (_%L78631%_) _%L78631%_))
                (_%__kont8463084631%_
                 (lambda (_%L78587%_ _%L78589%_) _%L78587%_))
                (_%__kont8463284633%_
                 (lambda (_%L78518%_ _%L78520%_ _%L78521%_)
                   (cons (gx#datum->syntax '#f 'begin)
                         (cons _%L78520%_
                               (foldr (lambda (_%g7854178544%_ _%g7854278547%_)
                                        (cons _%g7854178544%_ _%g7854278547%_))
                                      '()
                                      _%L78518%_))))))
            (let ((_%__match8469684697%_
                   (lambda (_%e7842878458%_
                            _%hd7842978462%_
                            _%tl7843078465%_
                            _%e7843178468%_
                            _%hd7843278472%_
                            _%tl7843378475%_
                            _%e7843478478%_
                            _%hd7843578482%_
                            _%tl7843678485%_
                            _%__splice8463484635%_
                            _%target7843778488%_
                            _%tl7843978491%_)
                     (letrec ((_%loop7844078494%_
                               (lambda (_%hd7843878498%_ _%rest7844478501%_)
                                 (if (gx#stx-pair? _%hd7843878498%_)
                                     (let ((_%e7844178504%_
                                            (gx#syntax-e _%hd7843878498%_)))
                                       (let ((_%lp-tl7844378511%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e7844178504%_)))
                                             (_%lp-hd7844278508%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e7844178504%_))))
                                         (_%loop7844078494%_
                                          _%lp-tl7844378511%_
                                          (cons _%lp-hd7844278508%_
                                                _%rest7844478501%_))))
                                     (let ((_%rest7844578514%_
                                            (reverse _%rest7844478501%_)))
                                       (_%__kont8463284633%_
                                        _%rest7844578514%_
                                        _%hd7843578482%_
                                        _%hd7843278472%_))))))
                       (_%loop7844078494%_ _%target7843778488%_ '())))))
              (if (gx#stx-pair? _%__stx8462584626%_)
                  (let ((_%e7840878611%_ (gx#syntax-e _%__stx8462584626%_)))
                    (let ((_%tl7841078618%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7840878611%_)))
                          (_%hd7840978615%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7840878611%_))))
                      (if (gx#stx-pair? _%tl7841078618%_)
                          (let ((_%e7841178621%_
                                 (gx#syntax-e _%tl7841078618%_)))
                            (let ((_%tl7841378628%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7841178621%_)))
                                  (_%hd7841278625%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7841178621%_))))
                              (if (gx#stx-null? _%tl7841378628%_)
                                  (_%__kont8462884629%_ _%hd7841278625%_)
                                  (if (gx#stx-pair? _%tl7841378628%_)
                                      (let ((_%e7842278577%_
                                             (gx#syntax-e _%tl7841378628%_)))
                                        (let ((_%tl7842478584%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7842278577%_)))
                                              (_%hd7842378581%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7842278577%_))))
                                          (if (gx#stx-null? _%tl7842478584%_)
                                              (_%__kont8463084631%_
                                               _%hd7842378581%_
                                               _%hd7841278625%_)
                                              (if (gx#stx-pair/null?
                                                   _%tl7842478584%_)
                                                  (let ((_%__splice8463484635%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl7842478584%_
                                                          '0)))
                                                    (let ((_%tl7843978491%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8463484635%_
                                                              '1)))
                                                          (_%target7843778488%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice8463484635%_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _%tl7843978491%_)
                                                          (_%__match8469684697%_
                                                           _%e7840878611%_
                                                           _%hd7840978615%_
                                                           _%tl7841078618%_
                                                           _%e7841178621%_
                                                           _%hd7841278625%_
                                                           _%tl7841378628%_
                                                           _%e7842278577%_
                                                           _%hd7842378581%_
                                                           _%tl7842478584%_
                                                           _%__splice8463484635%_
                                                           _%target7843778488%_
                                                           _%tl7843978491%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g7840578451%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g7840578451%_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g7840578451%_))))))
                          (let () (declare (not safe)) (_%g7840578451%_)))))
                  (let () (declare (not safe)) (_%g7840578451%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#do-while/c|
      (lambda (_%$stx78649%_)
        (let* ((_%g7865378676%_
                (lambda (_%g7865478672%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g7865478672%_)))
               (_%g7865278747%_
                (lambda (_%g7865478680%_)
                  (if (gx#stx-pair? _%g7865478680%_)
                      (let ((_%e7865978683%_ (gx#syntax-e _%g7865478680%_)))
                        (let ((_%hd7866078687%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e7865978683%_)))
                              (_%tl7866178690%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e7865978683%_))))
                          (if (gx#stx-pair? _%tl7866178690%_)
                              (let ((_%e7866278693%_
                                     (gx#syntax-e _%tl7866178690%_)))
                                (let ((_%hd7866378697%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e7866278693%_)))
                                      (_%tl7866478700%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e7866278693%_))))
                                  (if (gx#stx-pair? _%tl7866478700%_)
                                      (let ((_%e7866578703%_
                                             (gx#syntax-e _%tl7866478700%_)))
                                        (let ((_%hd7866678707%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e7866578703%_)))
                                              (_%tl7866778710%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e7866578703%_))))
                                          (if (gx#stx-pair? _%hd7866678707%_)
                                              (let ((_%e7866878713%_
                                                     (gx#syntax-e
                                                      _%hd7866678707%_)))
                                                (let ((_%hd7866978717%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e7866878713%_)))
                                                      (_%tl7867078720%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e7866878713%_))))
                                                  ((lambda (_%L78723%_
                                                            _%L78725%_
                                                            _%L78726%_
                                                            _%L78727%_)
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            'do/c)
                                                           (cons _%L78727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons (gx#datum->syntax '#f 'not)
                                           (cons _%L78726%_ '()))
                                     _%L78725%_)
                               _%L78723%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%tl7866778710%_
                                                   _%tl7867078720%_
                                                   _%hd7866978717%_
                                                   _%hd7866378697%_)))
                                              (_%g7865378676%_
                                               _%g7865478680%_))))
                                      (_%g7865378676%_ _%g7865478680%_))))
                              (_%g7865378676%_ _%g7865478680%_))))
                      (_%g7865378676%_ _%g7865478680%_)))))
          (_%g7865278747%_ _%$stx78649%_))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defmutable*|
      (lambda (_%stx78751%_)
        (let* ((_%__stx8469984700%_ _%stx78751%_)
               (_%g7875578789%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8469984700%_))))
          (let ((_%__kont8470284703%_
                 (lambda (_%L78891%_ _%L78893%_ _%L78894%_ _%L78895%_)
                   (let* ((_%g7892278937%_
                           (lambda (_%g7892378933%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g7892378933%_)))
                          (_%g7892178982%_
                           (lambda (_%g7892378941%_)
                             (if (gx#stx-pair? _%g7892378941%_)
                                 (let ((_%e7892678944%_
                                        (gx#syntax-e _%g7892378941%_)))
                                   (let ((_%hd7892778948%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e7892678944%_)))
                                         (_%tl7892878951%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e7892678944%_))))
                                     (if (gx#stx-pair? _%tl7892878951%_)
                                         (let ((_%e7892978954%_
                                                (gx#syntax-e
                                                 _%tl7892878951%_)))
                                           (let ((_%hd7893078958%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e7892978954%_)))
                                                 (_%tl7893178961%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e7892978954%_))))
                                             (if (gx#stx-null?
                                                  _%tl7893178961%_)
                                                 ((lambda (_%L78964%_
                                                           _%L78966%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'def)
                              (cons _%L78966%_ (cons _%L78894%_ '())))
                        (cons (cons (gx#datum->syntax '#f 'def)
                                    (cons (cons _%L78895%_ '())
                                          (cons _%L78966%_ '())))
                              (cons (cons (gx#datum->syntax '#f 'def/c)
                                          (cons (cons _%L78964%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'new-value)
                          (cons _%L78893%_ _%L78891%_))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'set!)
                                                            (cons _%L78966%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (gx#datum->syntax '#f 'new-value) '())))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd7893078958%_
                                                  _%hd7892778948%_)
                                                 (_%g7892278937%_
                                                  _%g7892378941%_))))
                                         (_%g7892278937%_ _%g7892378941%_))))
                                 (_%g7892278937%_ _%g7892378941%_)))))
                     (_%g7892178982%_
                      (list (gx#stx-identifier _%L78895%_ '"__" _%L78895%_)
                            (gx#stx-identifier
                             _%L78895%_
                             _%L78895%_
                             '"-set!"))))))
                (_%__kont8470484705%_
                 (lambda (_%L78826%_ _%L78828%_)
                   (cons (gx#datum->syntax '#f 'defmutable*)
                         (cons _%L78828%_
                               (cons _%L78826%_
                                     (cons (gx#datum->syntax '#f ':)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 '()))))))))
            (let ((_%__match8473084731%_
                   (lambda (_%e7876178851%_
                            _%hd7876278855%_
                            _%tl7876378858%_
                            _%e7876478861%_
                            _%hd7876578865%_
                            _%tl7876678868%_
                            _%e7876778871%_
                            _%hd7876878875%_
                            _%tl7876978878%_
                            _%e7877078881%_
                            _%hd7877178885%_
                            _%tl7877278888%_)
                     (let ((_%L78891%_ _%tl7877278888%_)
                           (_%L78893%_ _%hd7877178885%_)
                           (_%L78894%_ _%hd7876878875%_)
                           (_%L78895%_ _%hd7876578865%_))
                       (if (and (gx#identifier? _%L78895%_)
                                (gx#identifier? _%L78893%_)
                                (or (gx#free-identifier=?
                                     _%L78893%_
                                     (gx#datum->syntax '#f ':))
                                    (gx#free-identifier=?
                                     _%L78893%_
                                     (gx#datum->syntax '#f ':?))
                                    (gx#free-identifier=?
                                     _%L78893%_
                                     (gx#datum->syntax '#f ':~))))
                           (_%__kont8470284703%_
                            _%L78891%_
                            _%L78893%_
                            _%L78894%_
                            _%L78895%_)
                           (let () (declare (not safe)) (_%g7875578789%_)))))))
              (if (gx#stx-pair? _%__stx8469984700%_)
                  (let ((_%e7876178851%_ (gx#syntax-e _%__stx8469984700%_)))
                    (let ((_%tl7876378858%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7876178851%_)))
                          (_%hd7876278855%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7876178851%_))))
                      (if (gx#stx-pair? _%tl7876378858%_)
                          (let ((_%e7876478861%_
                                 (gx#syntax-e _%tl7876378858%_)))
                            (let ((_%tl7876678868%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7876478861%_)))
                                  (_%hd7876578865%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7876478861%_))))
                              (if (gx#stx-pair? _%tl7876678868%_)
                                  (let ((_%e7876778871%_
                                         (gx#syntax-e _%tl7876678868%_)))
                                    (let ((_%tl7876978878%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e7876778871%_)))
                                          (_%hd7876878875%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e7876778871%_))))
                                      (if (gx#stx-pair? _%tl7876978878%_)
                                          (let ((_%e7877078881%_
                                                 (gx#syntax-e
                                                  _%tl7876978878%_)))
                                            (let ((_%tl7877278888%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7877078881%_)))
                                                  (_%hd7877178885%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7877078881%_))))
                                              (_%__match8473084731%_
                                               _%e7876178851%_
                                               _%hd7876278855%_
                                               _%tl7876378858%_
                                               _%e7876478861%_
                                               _%hd7876578865%_
                                               _%tl7876678868%_
                                               _%e7876778871%_
                                               _%hd7876878875%_
                                               _%tl7876978878%_
                                               _%e7877078881%_
                                               _%hd7877178885%_
                                               _%tl7877278888%_)))
                                          (if (gx#stx-null? _%tl7876978878%_)
                                              (_%__kont8470484705%_
                                               _%hd7876878875%_
                                               _%hd7876578865%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g7875578789%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g7875578789%_)))))
                          (let () (declare (not safe)) (_%g7875578789%_)))))
                  (let () (declare (not safe)) (_%g7875578789%_))))))))
    (define |gerbil/core/contract~TypedDefinitions[:0:]#defmutable|
      (lambda (_%stx78990%_)
        (let* ((_%__stx8475384754%_ _%stx78990%_)
               (_%g7899479028%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx8475384754%_))))
          (let ((_%__kont8475684757%_
                 (lambda (_%L79130%_ _%L79132%_ _%L79133%_ _%L79134%_)
                   (let* ((_%g7916179176%_
                           (lambda (_%g7916279172%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g7916279172%_)))
                          (_%g7916079221%_
                           (lambda (_%g7916279180%_)
                             (if (gx#stx-pair? _%g7916279180%_)
                                 (let ((_%e7916579183%_
                                        (gx#syntax-e _%g7916279180%_)))
                                   (let ((_%hd7916679187%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e7916579183%_)))
                                         (_%tl7916779190%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e7916579183%_))))
                                     (if (gx#stx-pair? _%tl7916779190%_)
                                         (let ((_%e7916879193%_
                                                (gx#syntax-e
                                                 _%tl7916779190%_)))
                                           (let ((_%hd7916979197%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e7916879193%_)))
                                                 (_%tl7917079200%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e7916879193%_))))
                                             (if (gx#stx-null?
                                                  _%tl7917079200%_)
                                                 ((lambda (_%L79203%_
                                                           _%L79205%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'begin)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'def)
                              (cons _%L79205%_ (cons _%L79133%_ '())))
                        (cons (cons (gx#datum->syntax '#f 'def/c)
                                    (cons (cons _%L79203%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'new-value)
                                                            (cons _%L79132%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%L79130%_))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'set!)
                                                      (cons _%L79205%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'new-value)
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              (cons (cons (gx#datum->syntax '#f 'defsyntax)
                                          (cons _%L79134%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'identifier-rules)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'set!)
                                (cons (gx#datum->syntax '#f '%%set-dotted!)
                                      '()))
                          (cons (cons (cons (gx#datum->syntax '#f 'set!)
                                            (cons (gx#datum->syntax
                                                   '#f
                                                   'the-var)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'new-value)
                                                        '())))
                                      (cons (cons _%L79203%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'new-value)
                                                        '()))
                                            '()))
                                (cons (cons (cons (gx#datum->syntax
                                                   '#f
                                                   '%%set-dotted!)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'the-var)
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'new-value)
                                                              '())))
                                            (cons (cons _%L79203%_
                                                        (cons (gx#datum->syntax
                                                               '#f
                                                               'new-value)
                                                              '()))
                                                  '()))
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'the-var)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'identifier?)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'syntax)
                                  (cons (gx#datum->syntax '#f 'the-var) '()))
                            '()))
                (cons _%L79205%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (cons (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'the-var)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'arg)
                            (cons (gx#datum->syntax '#f '...) '())))
                (cons (cons _%L79205%_
                            (cons (gx#datum->syntax '#f 'arg)
                                  (cons (gx#datum->syntax '#f '...) '())))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%hd7916979197%_
                                                  _%hd7916679187%_)
                                                 (_%g7916179176%_
                                                  _%g7916279180%_))))
                                         (_%g7916179176%_ _%g7916279180%_))))
                                 (_%g7916179176%_ _%g7916279180%_)))))
                     (_%g7916079221%_
                      (list (gx#stx-identifier _%L79134%_ '"__" _%L79134%_)
                            (gx#stx-identifier
                             _%L79134%_
                             _%L79134%_
                             '"-set!"))))))
                (_%__kont8475884759%_
                 (lambda (_%L79065%_ _%L79067%_)
                   (cons (gx#datum->syntax '#f 'defmutable)
                         (cons _%L79067%_
                               (cons _%L79065%_
                                     (cons (gx#datum->syntax '#f ':)
                                           (cons (gx#datum->syntax '#f ':t)
                                                 '()))))))))
            (let ((_%__match8478484785%_
                   (lambda (_%e7900079090%_
                            _%hd7900179094%_
                            _%tl7900279097%_
                            _%e7900379100%_
                            _%hd7900479104%_
                            _%tl7900579107%_
                            _%e7900679110%_
                            _%hd7900779114%_
                            _%tl7900879117%_
                            _%e7900979120%_
                            _%hd7901079124%_
                            _%tl7901179127%_)
                     (let ((_%L79130%_ _%tl7901179127%_)
                           (_%L79132%_ _%hd7901079124%_)
                           (_%L79133%_ _%hd7900779114%_)
                           (_%L79134%_ _%hd7900479104%_))
                       (if (and (gx#identifier? _%L79134%_)
                                (gx#identifier? _%L79132%_)
                                (or (gx#free-identifier=?
                                     _%L79132%_
                                     (gx#datum->syntax '#f ':))
                                    (gx#free-identifier=?
                                     _%L79132%_
                                     (gx#datum->syntax '#f ':?))
                                    (gx#free-identifier=?
                                     _%L79132%_
                                     (gx#datum->syntax '#f ':~))))
                           (_%__kont8475684757%_
                            _%L79130%_
                            _%L79132%_
                            _%L79133%_
                            _%L79134%_)
                           (let () (declare (not safe)) (_%g7899479028%_)))))))
              (if (gx#stx-pair? _%__stx8475384754%_)
                  (let ((_%e7900079090%_ (gx#syntax-e _%__stx8475384754%_)))
                    (let ((_%tl7900279097%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e7900079090%_)))
                          (_%hd7900179094%_
                           (let ()
                             (declare (not safe))
                             (##car _%e7900079090%_))))
                      (if (gx#stx-pair? _%tl7900279097%_)
                          (let ((_%e7900379100%_
                                 (gx#syntax-e _%tl7900279097%_)))
                            (let ((_%tl7900579107%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e7900379100%_)))
                                  (_%hd7900479104%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e7900379100%_))))
                              (if (gx#stx-pair? _%tl7900579107%_)
                                  (let ((_%e7900679110%_
                                         (gx#syntax-e _%tl7900579107%_)))
                                    (let ((_%tl7900879117%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e7900679110%_)))
                                          (_%hd7900779114%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e7900679110%_))))
                                      (if (gx#stx-pair? _%tl7900879117%_)
                                          (let ((_%e7900979120%_
                                                 (gx#syntax-e
                                                  _%tl7900879117%_)))
                                            (let ((_%tl7901179127%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e7900979120%_)))
                                                  (_%hd7901079124%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e7900979120%_))))
                                              (_%__match8478484785%_
                                               _%e7900079090%_
                                               _%hd7900179094%_
                                               _%tl7900279097%_
                                               _%e7900379100%_
                                               _%hd7900479104%_
                                               _%tl7900579107%_
                                               _%e7900679110%_
                                               _%hd7900779114%_
                                               _%tl7900879117%_
                                               _%e7900979120%_
                                               _%hd7901079124%_
                                               _%tl7901179127%_)))
                                          (if (gx#stx-null? _%tl7900879117%_)
                                              (_%__kont8475884759%_
                                               _%hd7900779114%_
                                               _%hd7900479104%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g7899479028%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g7899479028%_)))))
                          (let () (declare (not safe)) (_%g7899479028%_)))))
                  (let () (declare (not safe)) (_%g7899479028%_))))))))))
